
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gred_sched {TYPE_1__** tab; scalar_t__ red_flags; } ;
struct TYPE_2__ {scalar_t__ red_flags; } ;


 unsigned int MAX_DPs ;

__attribute__((used)) static bool gred_per_vq_red_flags_used(struct gred_sched *table)
{
 unsigned int i;


 if (table->red_flags)
  return 0;
 for (i = 0; i < MAX_DPs; i++)
  if (table->tab[i] && table->tab[i]->red_flags)
   return 1;
 return 0;
}
