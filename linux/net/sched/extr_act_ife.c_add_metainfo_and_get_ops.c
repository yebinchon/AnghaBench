
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_meta_ops {int owner; } ;
struct tcf_ife_info {int dummy; } ;


 int ENOENT ;
 int __add_metainfo (struct tcf_meta_ops const*,struct tcf_ife_info*,int ,int *,int ,int,int) ;
 int module_put (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int add_metainfo_and_get_ops(const struct tcf_meta_ops *ops,
        struct tcf_ife_info *ife, u32 metaid,
        bool exists)
{
 int ret;

 if (!try_module_get(ops->owner))
  return -ENOENT;
 ret = __add_metainfo(ops, ife, metaid, ((void*)0), 0, 1, exists);
 if (ret)
  module_put(ops->owner);
 return ret;
}
