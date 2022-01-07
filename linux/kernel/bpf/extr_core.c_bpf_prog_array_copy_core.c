
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct bpf_prog_array_item {TYPE_1__* prog; } ;
struct bpf_prog_array {struct bpf_prog_array_item* items; } ;
struct TYPE_4__ {TYPE_2__* aux; } ;
struct TYPE_6__ {TYPE_1__ prog; } ;
struct TYPE_5__ {int id; } ;


 TYPE_3__ dummy_bpf_prog ;

__attribute__((used)) static bool bpf_prog_array_copy_core(struct bpf_prog_array *array,
         u32 *prog_ids,
         u32 request_cnt)
{
 struct bpf_prog_array_item *item;
 int i = 0;

 for (item = array->items; item->prog; item++) {
  if (item->prog == &dummy_bpf_prog.prog)
   continue;
  prog_ids[i] = item->prog->aux->id;
  if (++i == request_cnt) {
   item++;
   break;
  }
 }

 return !!(item->prog);
}
