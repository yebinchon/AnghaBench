
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_meta_ops {int (* alloc ) (struct tcf_meta_info*,void*,int ) ;} ;
struct tcf_meta_info {int metalist; struct tcf_meta_ops const* ops; int metaid; } ;
struct tcf_ife_info {int tcf_lock; int metalist; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int kfree (struct tcf_meta_info*) ;
 struct tcf_meta_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct tcf_meta_info*,void*,int ) ;

__attribute__((used)) static int __add_metainfo(const struct tcf_meta_ops *ops,
     struct tcf_ife_info *ife, u32 metaid, void *metaval,
     int len, bool atomic, bool exists)
{
 struct tcf_meta_info *mi = ((void*)0);
 int ret = 0;

 mi = kzalloc(sizeof(*mi), atomic ? GFP_ATOMIC : GFP_KERNEL);
 if (!mi)
  return -ENOMEM;

 mi->metaid = metaid;
 mi->ops = ops;
 if (len > 0) {
  ret = ops->alloc(mi, metaval, atomic ? GFP_ATOMIC : GFP_KERNEL);
  if (ret != 0) {
   kfree(mi);
   return ret;
  }
 }

 if (exists)
  spin_lock_bh(&ife->tcf_lock);
 list_add_tail(&mi->metalist, &ife->metalist);
 if (exists)
  spin_unlock_bh(&ife->tcf_lock);

 return ret;
}
