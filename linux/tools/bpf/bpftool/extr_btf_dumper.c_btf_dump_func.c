
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int info; int name_off; scalar_t__ type; } ;
struct btf_param {int name_off; scalar_t__ type; } ;
struct btf {int dummy; } ;


 int BTF_INFO_VLEN (int ) ;
 int BTF_PRINT_ARG (char*,...) ;
 int BTF_PRINT_TYPE (scalar_t__) ;
 int btf__name_by_offset (struct btf const*,int ) ;

__attribute__((used)) static int btf_dump_func(const struct btf *btf, char *func_sig,
    const struct btf_type *func_proto,
    const struct btf_type *func, int pos, int size)
{
 int i, vlen;

 BTF_PRINT_TYPE(func_proto->type);
 if (func)
  BTF_PRINT_ARG("%s(", btf__name_by_offset(btf, func->name_off));
 else
  BTF_PRINT_ARG("(");
 vlen = BTF_INFO_VLEN(func_proto->info);
 for (i = 0; i < vlen; i++) {
  struct btf_param *arg = &((struct btf_param *)(func_proto + 1))[i];

  if (i)
   BTF_PRINT_ARG(", ");
  if (arg->type) {
   BTF_PRINT_TYPE(arg->type);
   BTF_PRINT_ARG("%s",
          btf__name_by_offset(btf, arg->name_off));
  } else {
   BTF_PRINT_ARG("...");
  }
 }
 BTF_PRINT_ARG(")");

 return pos;
}
