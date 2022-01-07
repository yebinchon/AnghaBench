
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf_dump {int dummy; } ;
typedef int __u32 ;


 int btf_dump_printf (struct btf_dump*,char*,char const*) ;
 char* btf_dump_type_name (struct btf_dump*,int ) ;
 scalar_t__ btf_kflag (struct btf_type const*) ;

__attribute__((used)) static void btf_dump_emit_fwd_def(struct btf_dump *d, __u32 id,
      const struct btf_type *t)
{
 const char *name = btf_dump_type_name(d, id);

 if (btf_kflag(t))
  btf_dump_printf(d, "union %s", name);
 else
  btf_dump_printf(d, "struct %s", name);
}
