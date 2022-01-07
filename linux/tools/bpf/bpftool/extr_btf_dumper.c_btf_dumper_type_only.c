
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int dummy; } ;
typedef int __u32 ;


 int __btf_dumper_type_only (struct btf const*,int ,char*,int ,int) ;

void btf_dumper_type_only(const struct btf *btf, __u32 type_id, char *func_sig,
     int size)
{
 int err;

 func_sig[0] = '\0';
 if (!btf)
  return;

 err = __btf_dumper_type_only(btf, type_id, func_sig, 0, size);
 if (err < 0)
  func_sig[0] = '\0';
}
