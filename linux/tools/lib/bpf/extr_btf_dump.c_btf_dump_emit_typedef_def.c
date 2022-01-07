
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int type; } ;
struct btf_dump {int dummy; } ;
typedef int __u32 ;


 int btf_dump_emit_type_decl (struct btf_dump*,int ,char const*,int) ;
 char* btf_dump_ident_name (struct btf_dump*,int ) ;
 int btf_dump_printf (struct btf_dump*,char*) ;

__attribute__((used)) static void btf_dump_emit_typedef_def(struct btf_dump *d, __u32 id,
         const struct btf_type *t, int lvl)
{
 const char *name = btf_dump_ident_name(d, id);

 btf_dump_printf(d, "typedef ");
 btf_dump_emit_type_decl(d, t->type, name, lvl);
}
