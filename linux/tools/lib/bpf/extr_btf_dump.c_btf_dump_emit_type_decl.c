
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct id_stack {int cnt; scalar_t__ ids; } ;
struct btf_type {scalar_t__ type; } ;
struct btf_dump {int decl_stack_cnt; scalar_t__ decl_stack; int btf; } ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
 struct btf_type* btf__type_by_id (int ,scalar_t__) ;
 TYPE_1__* btf_array (struct btf_type const*) ;
 int btf_dump_emit_type_chain (struct btf_dump*,struct id_stack*,char const*,int) ;
 int btf_dump_push_decl_stack_id (struct btf_dump*,scalar_t__) ;
 int btf_kind (struct btf_type const*) ;
 int pr_warning (char*,int,...) ;

__attribute__((used)) static void btf_dump_emit_type_decl(struct btf_dump *d, __u32 id,
        const char *fname, int lvl)
{
 struct id_stack decl_stack;
 const struct btf_type *t;
 int err, stack_start;

 stack_start = d->decl_stack_cnt;
 for (;;) {
  err = btf_dump_push_decl_stack_id(d, id);
  if (err < 0) {





   pr_warning("not enough memory for decl stack:%d", err);
   d->decl_stack_cnt = stack_start;
   return;
  }


  if (id == 0)
   break;

  t = btf__type_by_id(d->btf, id);
  switch (btf_kind(t)) {
  case 133:
  case 128:
  case 138:
  case 132:
  case 136:
   id = t->type;
   break;
  case 139:
   id = btf_array(t)->type;
   break;
  case 134:
  case 137:
  case 135:
  case 131:
  case 129:
  case 130:
   goto done;
  default:
   pr_warning("unexpected type in decl chain, kind:%u, id:[%u]\n",
       btf_kind(t), id);
   goto done;
  }
 }
done:
 decl_stack.ids = d->decl_stack + stack_start;
 decl_stack.cnt = d->decl_stack_cnt - stack_start;
 btf_dump_emit_type_chain(d, &decl_stack, fname, lvl);
 d->decl_stack_cnt = stack_start;
}
