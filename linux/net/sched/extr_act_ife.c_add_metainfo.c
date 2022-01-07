
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_meta_ops {int owner; } ;
struct tcf_ife_info {int dummy; } ;


 int ENOENT ;
 int __add_metainfo (struct tcf_meta_ops const*,struct tcf_ife_info*,int ,void*,int,int,int) ;
 struct tcf_meta_ops* find_ife_oplist (int ) ;
 int module_put (int ) ;

__attribute__((used)) static int add_metainfo(struct tcf_ife_info *ife, u32 metaid, void *metaval,
   int len, bool exists)
{
 const struct tcf_meta_ops *ops = find_ife_oplist(metaid);
 int ret;

 if (!ops)
  return -ENOENT;
 ret = __add_metainfo(ops, ife, metaid, metaval, len, 0, exists);
 if (ret)

  module_put(ops->owner);
 return ret;
}
