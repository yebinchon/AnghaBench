
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {struct net* s_fs_info; } ;
struct notifier_block {int dummy; } ;
struct nfsd_net {struct cld_net* cld_net; } ;
struct net {int dummy; } ;
struct dentry {int dummy; } ;
struct cld_net {TYPE_1__* cn_pipe; } ;
struct TYPE_3__ {struct dentry* dentry; } ;


 int ENOTSUPP ;
 int IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;


 int THIS_MODULE ;
 int module_put (int ) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 struct dentry* nfsd4_cld_register_sb (struct super_block*,TYPE_1__*) ;
 int nfsd4_cld_unregister_sb (TYPE_1__*) ;
 int nfsd_net_id ;
 int try_module_get (int ) ;

__attribute__((used)) static int
rpc_pipefs_event(struct notifier_block *nb, unsigned long event, void *ptr)
{
 struct super_block *sb = ptr;
 struct net *net = sb->s_fs_info;
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 struct cld_net *cn = nn->cld_net;
 struct dentry *dentry;
 int ret = 0;

 if (!try_module_get(THIS_MODULE))
  return 0;

 if (!cn) {
  module_put(THIS_MODULE);
  return 0;
 }

 switch (event) {
 case 129:
  dentry = nfsd4_cld_register_sb(sb, cn->cn_pipe);
  if (IS_ERR(dentry)) {
   ret = PTR_ERR(dentry);
   break;
  }
  cn->cn_pipe->dentry = dentry;
  break;
 case 128:
  if (cn->cn_pipe->dentry)
   nfsd4_cld_unregister_sb(cn->cn_pipe);
  break;
 default:
  ret = -ENOTSUPP;
  break;
 }
 module_put(THIS_MODULE);
 return ret;
}
