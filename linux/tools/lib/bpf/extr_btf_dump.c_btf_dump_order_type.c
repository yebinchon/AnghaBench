
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_type {scalar_t__ name_off; size_t type; } ;
struct btf_param {size_t type; } ;
struct btf_member {size_t type; } ;
struct btf_dump_type_aux_state {scalar_t__ order_state; int referenced; } ;
struct btf_dump {struct btf_dump_type_aux_state* type_states; int btf; } ;
typedef size_t __u32 ;
typedef int __u16 ;
struct TYPE_2__ {size_t type; } ;
 int EINVAL ;
 int ELOOP ;
 scalar_t__ ORDERED ;
 scalar_t__ ORDERING ;
 struct btf_type* btf__type_by_id (int ,size_t) ;
 TYPE_1__* btf_array (struct btf_type const*) ;
 int btf_dump_add_emit_queue_id (struct btf_dump*,size_t) ;
 scalar_t__ btf_is_composite (struct btf_type const*) ;
 int btf_kind (struct btf_type const*) ;
 struct btf_member* btf_members (struct btf_type const*) ;
 struct btf_param* btf_params (struct btf_type const*) ;
 int btf_vlen (struct btf_type const*) ;
 int pr_warning (char*,size_t) ;

__attribute__((used)) static int btf_dump_order_type(struct btf_dump *d, __u32 id, bool through_ptr)
{
 struct btf_dump_type_aux_state *tstate = &d->type_states[id];
 const struct btf_type *t;
 __u16 vlen;
 int err, i;


 if (tstate->order_state == ORDERED)
  return 1;

 t = btf__type_by_id(d->btf, id);

 if (tstate->order_state == ORDERING) {

  if (btf_is_composite(t) && through_ptr && t->name_off != 0)
   return 0;
  pr_warning("unsatisfiable type cycle, id:[%u]\n", id);
  return -ELOOP;
 }

 switch (btf_kind(t)) {
 case 135:
  tstate->order_state = ORDERED;
  return 0;

 case 134:
  err = btf_dump_order_type(d, t->type, 1);
  tstate->order_state = ORDERED;
  return err;

 case 142:
  return btf_dump_order_type(d, btf_array(t)->type, through_ptr);

 case 132:
 case 130: {
  const struct btf_member *m = btf_members(t);





  if (through_ptr && t->name_off != 0)
   return 0;

  tstate->order_state = ORDERING;

  vlen = btf_vlen(t);
  for (i = 0; i < vlen; i++, m++) {
   err = btf_dump_order_type(d, m->type, 0);
   if (err < 0)
    return err;
  }

  if (t->name_off != 0) {
   err = btf_dump_add_emit_queue_id(d, id);
   if (err < 0)
    return err;
  }

  tstate->order_state = ORDERED;
  return 1;
 }
 case 139:
 case 136:





  if (t->name_off != 0 || !tstate->referenced) {
   err = btf_dump_add_emit_queue_id(d, id);
   if (err)
    return err;
  }
  tstate->order_state = ORDERED;
  return 1;

 case 131: {
  int is_strong;

  is_strong = btf_dump_order_type(d, t->type, through_ptr);
  if (is_strong < 0)
   return is_strong;


  if (through_ptr && !is_strong)
   return 0;


  err = btf_dump_add_emit_queue_id(d, id);
  if (err)
   return err;

  d->type_states[id].order_state = ORDERED;
  return 1;
 }
 case 128:
 case 141:
 case 133:
  return btf_dump_order_type(d, t->type, through_ptr);

 case 137: {
  const struct btf_param *p = btf_params(t);
  bool is_strong;

  err = btf_dump_order_type(d, t->type, through_ptr);
  if (err < 0)
   return err;
  is_strong = err > 0;

  vlen = btf_vlen(t);
  for (i = 0; i < vlen; i++, p++) {
   err = btf_dump_order_type(d, p->type, through_ptr);
   if (err < 0)
    return err;
   if (err > 0)
    is_strong = 1;
  }
  return is_strong;
 }
 case 138:
 case 129:
 case 140:
  d->type_states[id].order_state = ORDERED;
  return 0;

 default:
  return -EINVAL;
 }
}
