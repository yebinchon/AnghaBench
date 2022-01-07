
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_meta_ops {int (* validate ) (void*,int) ;scalar_t__ metatype; } ;


 scalar_t__ NLA_U16 ;
 scalar_t__ NLA_U32 ;
 int ife_validate_meta_u16 (void*,int) ;
 int ife_validate_meta_u32 (void*,int) ;
 int stub1 (void*,int) ;

__attribute__((used)) static int ife_validate_metatype(struct tcf_meta_ops *ops, void *val, int len)
{
 int ret = 0;






 if (ops->validate)
  return ops->validate(val, len);

 if (ops->metatype == NLA_U32)
  ret = ife_validate_meta_u32(val, len);
 else if (ops->metatype == NLA_U16)
  ret = ife_validate_meta_u16(val, len);

 return ret;
}
