
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int master_link; int client_link; struct nfs_client* nfs_client; } ;
struct nfs_net {int nfs_client_lock; } ;
struct nfs_client {int cl_res_state; int cl_superblocks; int cl_net; } ;


 int NFS_CS_STOP_RENEW ;
 int list_del (int *) ;
 int list_del_rcu (int *) ;
 scalar_t__ list_empty (int *) ;
 struct nfs_net* net_generic (int ,int ) ;
 int nfs_net_id ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;

void nfs_server_remove_lists(struct nfs_server *server)
{
 struct nfs_client *clp = server->nfs_client;
 struct nfs_net *nn;

 if (clp == ((void*)0))
  return;
 nn = net_generic(clp->cl_net, nfs_net_id);
 spin_lock(&nn->nfs_client_lock);
 list_del_rcu(&server->client_link);
 if (list_empty(&clp->cl_superblocks))
  set_bit(NFS_CS_STOP_RENEW, &clp->cl_res_state);
 list_del(&server->master_link);
 spin_unlock(&nn->nfs_client_lock);

 synchronize_rcu();
}
