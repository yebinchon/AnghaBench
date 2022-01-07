
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_clean () ;
 int cond_resched () ;

void cache_flush(void)
{
 while (cache_clean() != -1)
  cond_resched();
 while (cache_clean() != -1)
  cond_resched();
}
