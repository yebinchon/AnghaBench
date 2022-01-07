
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_dump {int emit_queue_cnt; int * emit_queue; TYPE_1__* type_states; void* cached_names; int btf; } ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {int emit_state; int order_state; } ;


 int EINVAL ;
 int EMITTED ;
 int ENOMEM ;
 int ORDERED ;
 scalar_t__ btf__get_nr_types (int ) ;
 int btf_dump_emit_type (struct btf_dump*,int ,int ) ;
 int btf_dump_mark_referenced (struct btf_dump*) ;
 int btf_dump_order_type (struct btf_dump*,scalar_t__,int) ;
 void* calloc (scalar_t__,int) ;

int btf_dump__dump_type(struct btf_dump *d, __u32 id)
{
 int err, i;

 if (id > btf__get_nr_types(d->btf))
  return -EINVAL;


 if (!d->type_states) {
  d->type_states = calloc(1 + btf__get_nr_types(d->btf),
     sizeof(d->type_states[0]));
  if (!d->type_states)
   return -ENOMEM;
  d->cached_names = calloc(1 + btf__get_nr_types(d->btf),
      sizeof(d->cached_names[0]));
  if (!d->cached_names)
   return -ENOMEM;


  d->type_states[0].order_state = ORDERED;
  d->type_states[0].emit_state = EMITTED;


  err = btf_dump_mark_referenced(d);
  if (err)
   return err;
 }

 d->emit_queue_cnt = 0;
 err = btf_dump_order_type(d, id, 0);
 if (err < 0)
  return err;

 for (i = 0; i < d->emit_queue_cnt; i++)
  btf_dump_emit_type(d, d->emit_queue[i], 0 );

 return 0;
}
