
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_net {struct dentry* bl_device_pipe; int bl_wq; int bl_mutex; } ;
struct net {int dummy; } ;
struct dentry {struct dentry* dentry; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int bl_upcall_ops ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 struct nfs_net* net_generic (struct net*,int ) ;
 struct dentry* nfs4blocklayout_register_net (struct net*,struct dentry*) ;
 int nfs_net_id ;
 int rpc_destroy_pipe_data (struct dentry*) ;
 struct dentry* rpc_mkpipe_data (int *,int ) ;

__attribute__((used)) static int nfs4blocklayout_net_init(struct net *net)
{
 struct nfs_net *nn = net_generic(net, nfs_net_id);
 struct dentry *dentry;

 mutex_init(&nn->bl_mutex);
 init_waitqueue_head(&nn->bl_wq);
 nn->bl_device_pipe = rpc_mkpipe_data(&bl_upcall_ops, 0);
 if (IS_ERR(nn->bl_device_pipe))
  return PTR_ERR(nn->bl_device_pipe);
 dentry = nfs4blocklayout_register_net(net, nn->bl_device_pipe);
 if (IS_ERR(dentry)) {
  rpc_destroy_pipe_data(nn->bl_device_pipe);
  return PTR_ERR(dentry);
 }
 nn->bl_device_pipe->dentry = dentry;
 return 0;
}
