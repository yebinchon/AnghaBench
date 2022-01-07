
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msr_counter {scalar_t__ format; struct msr_counter* next; } ;
struct core_data {scalar_t__* counter; int core_energy; scalar_t__ mc6_us; int core_temp_c; scalar_t__ c7; scalar_t__ c6; scalar_t__ c3; } ;
struct TYPE_2__ {struct msr_counter* cp; } ;


 int DELTA_WRAP32 (int ,int ) ;
 scalar_t__ FORMAT_RAW ;
 TYPE_1__ sys ;

void
delta_core(struct core_data *new, struct core_data *old)
{
 int i;
 struct msr_counter *mp;

 old->c3 = new->c3 - old->c3;
 old->c6 = new->c6 - old->c6;
 old->c7 = new->c7 - old->c7;
 old->core_temp_c = new->core_temp_c;
 old->mc6_us = new->mc6_us - old->mc6_us;

 DELTA_WRAP32(new->core_energy, old->core_energy);

 for (i = 0, mp = sys.cp; mp; i++, mp = mp->next) {
  if (mp->format == FORMAT_RAW)
   old->counter[i] = new->counter[i];
  else
   old->counter[i] = new->counter[i] - old->counter[i];
 }
}
