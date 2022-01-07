
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cond_resched () ;

__attribute__((used)) static unsigned long pfn_next(unsigned long pfn)
{
 if (pfn % 1024 == 0)
  cond_resched();
 return pfn + 1;
}
