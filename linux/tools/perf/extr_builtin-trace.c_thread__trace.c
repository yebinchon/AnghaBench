
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_trace {int nr_events; } ;
struct thread {int dummy; } ;
typedef int FILE ;


 int PERF_COLOR_RED ;
 int color_fprintf (int *,int ,char*) ;
 struct thread_trace* thread__priv (struct thread*) ;
 int thread__set_priv (struct thread*,int ) ;
 int thread_trace__new () ;

__attribute__((used)) static struct thread_trace *thread__trace(struct thread *thread, FILE *fp)
{
 struct thread_trace *ttrace;

 if (thread == ((void*)0))
  goto fail;

 if (thread__priv(thread) == ((void*)0))
  thread__set_priv(thread, thread_trace__new());

 if (thread__priv(thread) == ((void*)0))
  goto fail;

 ttrace = thread__priv(thread);
 ++ttrace->nr_events;

 return ttrace;
fail:
 color_fprintf(fp, PERF_COLOR_RED,
        "WARNING: not enough memory, dropping samples!\n");
 return ((void*)0);
}
