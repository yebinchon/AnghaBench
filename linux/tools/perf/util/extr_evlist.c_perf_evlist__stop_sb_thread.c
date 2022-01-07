
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done; int th; } ;
struct evlist {TYPE_1__ thread; } ;


 int evlist__delete (struct evlist*) ;
 int pthread_join (int ,int *) ;

void perf_evlist__stop_sb_thread(struct evlist *evlist)
{
 if (!evlist)
  return;
 evlist->thread.done = 1;
 pthread_join(evlist->thread.th, ((void*)0));
 evlist__delete(evlist);
}
