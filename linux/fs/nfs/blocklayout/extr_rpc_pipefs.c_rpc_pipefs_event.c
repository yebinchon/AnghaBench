
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {struct net* s_fs_info; } ;
struct notifier_block {int dummy; } ;
struct nfs_net {TYPE_1__* bl_device_pipe; } ;
struct net {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;


 int ENOTSUPP ;
 int IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;


 int THIS_MODULE ;
 int module_put (int ) ;
 struct nfs_net* net_generic (struct net*,int ) ;
 struct dentry* nfs4blocklayout_register_sb (struct super_block*,TYPE_1__*) ;
 int nfs4blocklayout_unregister_sb (struct super_block*,TYPE_1__*) ;
 int nfs_net_id ;
 int try_module_get (int ) ;

__attribute__((used)) static int rpc_pipefs_event(struct notifier_block *nb, unsigned long event,
      void *ptr)
{
 struct super_block *sb = ptr;
 struct net *net = sb->s_fs_info;
 struct nfs_net *nn = net_generic(net, nfs_net_id);
 struct dentry *dentry;
 int ret = 0;

 if (!try_module_get(THIS_MODULE))
  return 0;

 if (nn->bl_device_pipe == ((void*)0)) {
  module_put(THIS_MODULE);
  return 0;
 }

 switch (event) {
 case 129:
  dentry = nfs4blocklayout_register_sb(sb, nn->bl_device_pipe);
  if (IS_ERR(dentry)) {
   ret = PTR_ERR(dentry);
   break;
  }
  nn->bl_device_pipe->dentry = dentry;
  break;
 case 128:
  if (nn->bl_device_pipe->dentry)
   nfs4blocklayout_unregister_sb(sb, nn->bl_device_pipe);
  break;
 default:
  ret = -ENOTSUPP;
  break;
 }
 module_put(THIS_MODULE);
 return ret;
}
