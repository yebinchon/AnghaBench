
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int master_link; int client_link; struct nfs_client* nfs_client; } ;
struct nfs_net {int nfs_client_lock; int nfs_volume_list; } ;
struct nfs_client {int cl_res_state; int cl_superblocks; int cl_net; } ;


 int NFS_CS_STOP_RENEW ;
 int clear_bit (int ,int *) ;
 int list_add_tail (int *,int *) ;
 int list_add_tail_rcu (int *,int *) ;
 struct nfs_net* net_generic (int ,int ) ;
 int nfs_net_id ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_server_insert_lists(struct nfs_server *server)
{
 struct nfs_client *clp = server->nfs_client;
 struct nfs_net *nn = net_generic(clp->cl_net, nfs_net_id);

 spin_lock(&nn->nfs_client_lock);
 list_add_tail_rcu(&server->client_link, &clp->cl_superblocks);
 list_add_tail(&server->master_link, &nn->nfs_volume_list);
 clear_bit(NFS_CS_STOP_RENEW, &clp->cl_res_state);
 spin_unlock(&nn->nfs_client_lock);

}
