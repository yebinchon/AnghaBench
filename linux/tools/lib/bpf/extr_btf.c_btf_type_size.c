
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_var_secinfo {int dummy; } ;
struct btf_var {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf_param {int dummy; } ;
struct btf_member {int dummy; } ;
struct btf_enum {int dummy; } ;
struct btf_array {int dummy; } ;
typedef int __u32 ;
typedef int __u16 ;
 int EINVAL ;
 int btf_kind (struct btf_type*) ;
 int btf_vlen (struct btf_type*) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int btf_type_size(struct btf_type *t)
{
 int base_size = sizeof(struct btf_type);
 __u16 vlen = btf_vlen(t);

 switch (btf_kind(t)) {
 case 136:
 case 141:
 case 128:
 case 133:
 case 134:
 case 131:
 case 138:
  return base_size;
 case 135:
  return base_size + sizeof(__u32);
 case 139:
  return base_size + vlen * sizeof(struct btf_enum);
 case 142:
  return base_size + sizeof(struct btf_array);
 case 132:
 case 130:
  return base_size + vlen * sizeof(struct btf_member);
 case 137:
  return base_size + vlen * sizeof(struct btf_param);
 case 129:
  return base_size + sizeof(struct btf_var);
 case 140:
  return base_size + vlen * sizeof(struct btf_var_secinfo);
 default:
  pr_debug("Unsupported BTF_KIND:%u\n", btf_kind(t));
  return -EINVAL;
 }
}
