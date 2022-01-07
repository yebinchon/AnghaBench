
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iterations {scalar_t__ cycles; int nr_loop_iter; } ;
struct TYPE_2__ {scalar_t__ cycles; } ;
struct branch_entry {TYPE_1__ flags; } ;



__attribute__((used)) static void save_iterations(struct iterations *iter,
       struct branch_entry *be, int nr)
{
 int i;

 iter->nr_loop_iter++;
 iter->cycles = 0;

 for (i = 0; i < nr; i++)
  iter->cycles += be[i].flags.cycles;
}
