
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cpudl {TYPE_1__* elements; } ;
struct TYPE_2__ {int cpu; int idx; int dl; } ;


 scalar_t__ dl_time_before (int ,int ) ;
 int parent (int) ;

__attribute__((used)) static void cpudl_heapify_up(struct cpudl *cp, int idx)
{
 int p;

 int orig_cpu = cp->elements[idx].cpu;
 u64 orig_dl = cp->elements[idx].dl;

 if (idx == 0)
  return;

 do {
  p = parent(idx);
  if (dl_time_before(orig_dl, cp->elements[p].dl))
   break;

  cp->elements[idx].cpu = cp->elements[p].cpu;
  cp->elements[idx].dl = cp->elements[p].dl;
  cp->elements[cp->elements[idx].cpu].idx = idx;
  idx = p;
 } while (idx != 0);

 cp->elements[idx].cpu = orig_cpu;
 cp->elements[idx].dl = orig_dl;
 cp->elements[cp->elements[idx].cpu].idx = idx;
}
