
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpudl {TYPE_1__* elements; } ;
struct TYPE_2__ {int dl; } ;


 int cpudl_heapify_down (struct cpudl*,int) ;
 int cpudl_heapify_up (struct cpudl*,int) ;
 scalar_t__ dl_time_before (int ,int ) ;
 size_t parent (int) ;

__attribute__((used)) static void cpudl_heapify(struct cpudl *cp, int idx)
{
 if (idx > 0 && dl_time_before(cp->elements[parent(idx)].dl,
    cp->elements[idx].dl))
  cpudl_heapify_up(cp, idx);
 else
  cpudl_heapify_down(cp, idx);
}
