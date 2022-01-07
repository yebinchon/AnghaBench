
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int NR_MM_COUNTERS ;
 int add_mm_counter (struct mm_struct*,int,int) ;
 TYPE_1__* current ;
 int sync_mm_rss (struct mm_struct*) ;

__attribute__((used)) static inline void add_mm_rss_vec(struct mm_struct *mm, int *rss)
{
 int i;

 if (current->mm == mm)
  sync_mm_rss(mm);
 for (i = 0; i < NR_MM_COUNTERS; i++)
  if (rss[i])
   add_mm_counter(mm, i, rss[i]);
}
