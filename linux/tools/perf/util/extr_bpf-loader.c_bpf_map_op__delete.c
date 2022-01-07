
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array; } ;
struct bpf_map_op {scalar_t__ key_type; TYPE_1__ k; int list; } ;


 scalar_t__ BPF_MAP_KEY_RANGES ;
 int free (struct bpf_map_op*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int parse_events__clear_array (int *) ;

__attribute__((used)) static void
bpf_map_op__delete(struct bpf_map_op *op)
{
 if (!list_empty(&op->list))
  list_del_init(&op->list);
 if (op->key_type == BPF_MAP_KEY_RANGES)
  parse_events__clear_array(&op->k.array);
 free(op);
}
