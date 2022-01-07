
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current_perf_hook ;
 int jmpbuf ;
 int siglongjmp (int ,int) ;

void perf_hooks__recover(void)
{
 if (current_perf_hook)
  siglongjmp(jmpbuf, 1);
}
