
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int cpus; } ;



int tep_get_cpus(struct tep_handle *tep)
{
 if (tep)
  return tep->cpus;
 return 0;
}
