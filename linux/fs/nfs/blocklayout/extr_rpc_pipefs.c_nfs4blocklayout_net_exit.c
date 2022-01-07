
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_net {int * bl_device_pipe; } ;
struct net {int dummy; } ;


 struct nfs_net* net_generic (struct net*,int ) ;
 int nfs4blocklayout_unregister_net (struct net*,int *) ;
 int nfs_net_id ;
 int rpc_destroy_pipe_data (int *) ;

__attribute__((used)) static void nfs4blocklayout_net_exit(struct net *net)
{
 struct nfs_net *nn = net_generic(net, nfs_net_id);

 nfs4blocklayout_unregister_net(net, nn->bl_device_pipe);
 rpc_destroy_pipe_data(nn->bl_device_pipe);
 nn->bl_device_pipe = ((void*)0);
}
