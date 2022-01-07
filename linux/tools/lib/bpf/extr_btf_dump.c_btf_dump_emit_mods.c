
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id_stack {int cnt; int * ids; } ;
struct btf_type {int dummy; } ;
struct btf_dump {int btf; } ;
typedef int __u32 ;





 struct btf_type* btf__type_by_id (int ,int ) ;
 int btf_dump_printf (struct btf_dump*,char*) ;
 int btf_kind (struct btf_type const*) ;

__attribute__((used)) static void btf_dump_emit_mods(struct btf_dump *d, struct id_stack *decl_stack)
{
 const struct btf_type *t;
 __u32 id;

 while (decl_stack->cnt) {
  id = decl_stack->ids[decl_stack->cnt - 1];
  t = btf__type_by_id(d->btf, id);

  switch (btf_kind(t)) {
  case 128:
   btf_dump_printf(d, "volatile ");
   break;
  case 130:
   btf_dump_printf(d, "const ");
   break;
  case 129:
   btf_dump_printf(d, "restrict ");
   break;
  default:
   return;
  }
  decl_stack->cnt--;
 }
}
