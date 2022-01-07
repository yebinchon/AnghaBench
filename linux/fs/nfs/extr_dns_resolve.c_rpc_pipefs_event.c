
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct net* s_fs_info; } ;
struct notifier_block {int dummy; } ;
struct nfs_net {struct cache_detail* nfs_dns_resolve; } ;
struct net {int dummy; } ;
struct cache_detail {int dummy; } ;


 int ENOTSUPP ;


 int THIS_MODULE ;
 int module_put (int ) ;
 struct nfs_net* net_generic (struct net*,int ) ;
 int nfs_cache_register_sb (struct super_block*,struct cache_detail*) ;
 int nfs_cache_unregister_sb (struct super_block*,struct cache_detail*) ;
 int nfs_net_id ;
 int try_module_get (int ) ;

__attribute__((used)) static int rpc_pipefs_event(struct notifier_block *nb, unsigned long event,
      void *ptr)
{
 struct super_block *sb = ptr;
 struct net *net = sb->s_fs_info;
 struct nfs_net *nn = net_generic(net, nfs_net_id);
 struct cache_detail *cd = nn->nfs_dns_resolve;
 int ret = 0;

 if (cd == ((void*)0))
  return 0;

 if (!try_module_get(THIS_MODULE))
  return 0;

 switch (event) {
 case 129:
  ret = nfs_cache_register_sb(sb, cd);
  break;
 case 128:
  nfs_cache_unregister_sb(sb, cd);
  break;
 default:
  ret = -ENOTSUPP;
  break;
 }
 module_put(THIS_MODULE);
 return ret;
}
