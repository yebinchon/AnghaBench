
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_net {int nfs_volume_list; int nfs_client_list; } ;
struct net {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 int list_empty (int *) ;
 struct nfs_net* net_generic (struct net*,int ) ;
 int nfs_cleanup_cb_ident_idr (struct net*) ;
 int nfs_net_id ;
 int nfs_netns_sysfs_destroy (struct nfs_net*) ;

void nfs_clients_exit(struct net *net)
{
 struct nfs_net *nn = net_generic(net, nfs_net_id);

 nfs_netns_sysfs_destroy(nn);
 nfs_cleanup_cb_ident_idr(net);
 WARN_ON_ONCE(!list_empty(&nn->nfs_client_list));
 WARN_ON_ONCE(!list_empty(&nn->nfs_volume_list));
}
