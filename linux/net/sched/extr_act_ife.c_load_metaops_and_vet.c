
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_meta_ops {int owner; } ;


 int ENOENT ;
 struct tcf_meta_ops* find_ife_oplist (int ) ;
 int ife_meta_id2name (int ) ;
 int ife_validate_metatype (struct tcf_meta_ops*,void*,int) ;
 int module_put (int ) ;
 int request_module (char*,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int load_metaops_and_vet(u32 metaid, void *val, int len, bool rtnl_held)
{
 struct tcf_meta_ops *ops = find_ife_oplist(metaid);
 int ret = 0;

 if (!ops) {
  ret = -ENOENT;
 }

 if (ops) {
  ret = 0;
  if (len)
   ret = ife_validate_metatype(ops, val, len);

  module_put(ops->owner);
 }

 return ret;
}
