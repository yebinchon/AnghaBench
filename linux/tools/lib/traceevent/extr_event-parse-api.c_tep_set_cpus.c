
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int cpus; } ;



void tep_set_cpus(struct tep_handle *tep, int cpus)
{
 if (tep)
  tep->cpus = cpus;
}
