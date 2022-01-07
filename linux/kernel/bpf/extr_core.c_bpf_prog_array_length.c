
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bpf_prog_array_item {int * prog; } ;
struct bpf_prog_array {struct bpf_prog_array_item* items; } ;
struct TYPE_2__ {int prog; } ;


 TYPE_1__ dummy_bpf_prog ;

int bpf_prog_array_length(struct bpf_prog_array *array)
{
 struct bpf_prog_array_item *item;
 u32 cnt = 0;

 for (item = array->items; item->prog; item++)
  if (item->prog != &dummy_bpf_prog.prog)
   cnt++;
 return cnt;
}
