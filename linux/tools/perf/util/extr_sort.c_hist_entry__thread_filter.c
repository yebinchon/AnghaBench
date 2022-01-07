
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct hist_entry {struct thread const* thread; } ;


 int HIST_FILTER__THREAD ;

__attribute__((used)) static int hist_entry__thread_filter(struct hist_entry *he, int type, const void *arg)
{
 const struct thread *th = arg;

 if (type != HIST_FILTER__THREAD)
  return -1;

 return th && he->thread != th;
}
