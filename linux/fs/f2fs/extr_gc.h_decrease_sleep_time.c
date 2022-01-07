
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_gc_kthread {unsigned int min_sleep_time; unsigned int no_gc_sleep_time; unsigned int max_sleep_time; } ;



__attribute__((used)) static inline void decrease_sleep_time(struct f2fs_gc_kthread *gc_th,
       unsigned int *wait)
{
 unsigned int min_time = gc_th->min_sleep_time;

 if (*wait == gc_th->no_gc_sleep_time)
  *wait = gc_th->max_sleep_time;

 if ((long long)*wait - (long long)min_time < (long long)min_time)
  *wait = min_time;
 else
  *wait -= min_time;
}
