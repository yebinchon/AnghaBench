
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfs4_ff_layout_segment {int mirror_array_cnt; TYPE_1__** mirror_array; } ;
struct TYPE_3__ {scalar_t__ efficiency; } ;


 int swap (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void ff_layout_sort_mirrors(struct nfs4_ff_layout_segment *fls)
{
 int i, j;

 for (i = 0; i < fls->mirror_array_cnt - 1; i++) {
  for (j = i + 1; j < fls->mirror_array_cnt; j++)
   if (fls->mirror_array[i]->efficiency <
       fls->mirror_array[j]->efficiency)
    swap(fls->mirror_array[i],
         fls->mirror_array[j]);
 }
}
