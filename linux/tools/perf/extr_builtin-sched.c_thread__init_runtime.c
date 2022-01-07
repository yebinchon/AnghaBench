
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_runtime {int run_stats; } ;
struct thread {int dummy; } ;


 int init_stats (int *) ;
 int thread__set_priv (struct thread*,struct thread_runtime*) ;
 struct thread_runtime* zalloc (int) ;

__attribute__((used)) static struct thread_runtime *thread__init_runtime(struct thread *thread)
{
 struct thread_runtime *r;

 r = zalloc(sizeof(struct thread_runtime));
 if (!r)
  return ((void*)0);

 init_stats(&r->run_stats);
 thread__set_priv(thread, r);

 return r;
}
