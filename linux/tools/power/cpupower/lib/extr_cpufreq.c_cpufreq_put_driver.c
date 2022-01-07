
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;

void cpufreq_put_driver(char *ptr)
{
 if (!ptr)
  return;
 free(ptr);
}
