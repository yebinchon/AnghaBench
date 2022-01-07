
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_type {size_t type; int name_off; } ;
struct btf_param {size_t type; } ;
struct btf_member {size_t type; } ;
struct btf_dump_type_aux_state {scalar_t__ emit_state; int fwd_emitted; } ;
struct btf_dump {int btf; struct btf_dump_type_aux_state* type_states; } ;
typedef size_t __u32 ;
typedef int __u16 ;
struct TYPE_2__ {size_t type; } ;
 scalar_t__ EMITTED ;
 scalar_t__ EMITTING ;
 scalar_t__ NOT_EMITTED ;
 struct btf_type* btf__type_by_id (int ,size_t) ;
 TYPE_1__* btf_array (struct btf_type const*) ;
 int btf_dump_emit_enum_def (struct btf_dump*,size_t,struct btf_type const*,int ) ;
 int btf_dump_emit_fwd_def (struct btf_dump*,size_t,struct btf_type const*) ;
 int btf_dump_emit_struct_def (struct btf_dump*,size_t,struct btf_type const*,int ) ;
 int btf_dump_emit_struct_fwd (struct btf_dump*,size_t,struct btf_type const*) ;
 int btf_dump_emit_typedef_def (struct btf_dump*,size_t,struct btf_type const*,int ) ;
 int btf_dump_is_blacklisted (struct btf_dump*,size_t) ;
 int btf_dump_printf (struct btf_dump*,char*) ;
 int btf_kind (struct btf_type const*) ;
 struct btf_member* btf_members (struct btf_type const*) ;
 struct btf_param* btf_params (struct btf_type const*) ;
 int btf_vlen (struct btf_type const*) ;
 int pr_warning (char*,size_t) ;

__attribute__((used)) static void btf_dump_emit_type(struct btf_dump *d, __u32 id, __u32 cont_id)
{
 struct btf_dump_type_aux_state *tstate = &d->type_states[id];
 bool top_level_def = cont_id == 0;
 const struct btf_type *t;
 __u16 kind;

 if (tstate->emit_state == EMITTED)
  return;

 t = btf__type_by_id(d->btf, id);
 kind = btf_kind(t);

 if (tstate->emit_state == EMITTING) {
  if (tstate->fwd_emitted)
   return;

  switch (kind) {
  case 131:
  case 129:




   if (id == cont_id)
    return;
   if (t->name_off == 0) {
    pr_warning("anonymous struct/union loop, id:[%u]\n",
        id);
    return;
   }
   btf_dump_emit_struct_fwd(d, id, t);
   btf_dump_printf(d, ";\n\n");
   tstate->fwd_emitted = 1;
   break;
  case 130:





   if (!btf_dump_is_blacklisted(d, id)) {
    btf_dump_emit_typedef_def(d, id, t, 0);
    btf_dump_printf(d, ";\n\n");
   };
   tstate->fwd_emitted = 1;
   break;
  default:
   break;
  }

  return;
 }

 switch (kind) {
 case 134:
  tstate->emit_state = EMITTED;
  break;
 case 137:
  if (top_level_def) {
   btf_dump_emit_enum_def(d, id, t, 0);
   btf_dump_printf(d, ";\n\n");
  }
  tstate->emit_state = EMITTED;
  break;
 case 133:
 case 128:
 case 138:
 case 132:
  btf_dump_emit_type(d, t->type, cont_id);
  break;
 case 139:
  btf_dump_emit_type(d, btf_array(t)->type, cont_id);
  break;
 case 135:
  btf_dump_emit_fwd_def(d, id, t);
  btf_dump_printf(d, ";\n\n");
  tstate->emit_state = EMITTED;
  break;
 case 130:
  tstate->emit_state = EMITTING;
  btf_dump_emit_type(d, t->type, id);







  if (!tstate->fwd_emitted && !btf_dump_is_blacklisted(d, id)) {
   btf_dump_emit_typedef_def(d, id, t, 0);
   btf_dump_printf(d, ";\n\n");
  }
  tstate->emit_state = EMITTED;
  break;
 case 131:
 case 129:
  tstate->emit_state = EMITTING;







  if (top_level_def || t->name_off == 0) {
   const struct btf_member *m = btf_members(t);
   __u16 vlen = btf_vlen(t);
   int i, new_cont_id;

   new_cont_id = t->name_off == 0 ? cont_id : id;
   for (i = 0; i < vlen; i++, m++)
    btf_dump_emit_type(d, m->type, new_cont_id);
  } else if (!tstate->fwd_emitted && id != cont_id) {
   btf_dump_emit_struct_fwd(d, id, t);
   btf_dump_printf(d, ";\n\n");
   tstate->fwd_emitted = 1;
  }

  if (top_level_def) {
   btf_dump_emit_struct_def(d, id, t, 0);
   btf_dump_printf(d, ";\n\n");
   tstate->emit_state = EMITTED;
  } else {
   tstate->emit_state = NOT_EMITTED;
  }
  break;
 case 136: {
  const struct btf_param *p = btf_params(t);
  __u16 vlen = btf_vlen(t);
  int i;

  btf_dump_emit_type(d, t->type, cont_id);
  for (i = 0; i < vlen; i++, p++)
   btf_dump_emit_type(d, p->type, cont_id);

  break;
 }
 default:
  break;
 }
}
