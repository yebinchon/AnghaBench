
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog_array_item {struct bpf_prog* prog; } ;
struct bpf_prog_array {struct bpf_prog_array_item* items; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_2__ {struct bpf_prog prog; } ;


 int EEXIST ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct bpf_prog_array* bpf_prog_array_alloc (int,int ) ;
 TYPE_1__ dummy_bpf_prog ;

int bpf_prog_array_copy(struct bpf_prog_array *old_array,
   struct bpf_prog *exclude_prog,
   struct bpf_prog *include_prog,
   struct bpf_prog_array **new_array)
{
 int new_prog_cnt, carry_prog_cnt = 0;
 struct bpf_prog_array_item *existing;
 struct bpf_prog_array *array;
 bool found_exclude = 0;
 int new_prog_idx = 0;




 if (old_array) {
  existing = old_array->items;
  for (; existing->prog; existing++) {
   if (existing->prog == exclude_prog) {
    found_exclude = 1;
    continue;
   }
   if (existing->prog != &dummy_bpf_prog.prog)
    carry_prog_cnt++;
   if (existing->prog == include_prog)
    return -EEXIST;
  }
 }

 if (exclude_prog && !found_exclude)
  return -ENOENT;


 new_prog_cnt = carry_prog_cnt;
 if (include_prog)
  new_prog_cnt += 1;


 if (!new_prog_cnt) {
  *new_array = ((void*)0);
  return 0;
 }


 array = bpf_prog_array_alloc(new_prog_cnt + 1, GFP_KERNEL);
 if (!array)
  return -ENOMEM;


 if (carry_prog_cnt) {
  existing = old_array->items;
  for (; existing->prog; existing++)
   if (existing->prog != exclude_prog &&
       existing->prog != &dummy_bpf_prog.prog) {
    array->items[new_prog_idx++].prog =
     existing->prog;
   }
 }
 if (include_prog)
  array->items[new_prog_idx++].prog = include_prog;
 array->items[new_prog_idx].prog = ((void*)0);
 *new_array = array;
 return 0;
}
