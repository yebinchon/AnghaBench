
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AMD_FAM14H_STATE_NUM ;
 unsigned long** current_count ;
 int dprint (char*,double,unsigned long,double) ;
 unsigned long** previous_count ;
 double timediff ;

__attribute__((used)) static int fam14h_get_count_percent(unsigned int id, double *percent,
        unsigned int cpu)
{
 unsigned long diff;

 if (id >= AMD_FAM14H_STATE_NUM)
  return -1;

 diff = current_count[id][cpu] - previous_count[id][cpu];

 if (timediff == 0)
  *percent = 0.0;
 else
  *percent = 100.0 * diff / timediff / 12.5;

 dprint("Timediff: %llu - res~: %lu us - percent: %.2f %%\n",
        timediff, diff * 10 / 125, *percent);

 return 0;
}
