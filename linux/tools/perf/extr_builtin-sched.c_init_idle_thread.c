
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {int run_stats; } ;
struct idle_thread_runtime {int cursor; int callchain; TYPE_1__ tr; } ;


 int ENOMEM ;
 int callchain_cursor_reset (int *) ;
 int callchain_init (int *) ;
 int idle_comm ;
 int init_stats (int *) ;
 int thread__set_comm (struct thread*,int ,int ) ;
 int thread__set_priv (struct thread*,struct idle_thread_runtime*) ;
 struct idle_thread_runtime* zalloc (int) ;

__attribute__((used)) static int init_idle_thread(struct thread *thread)
{
 struct idle_thread_runtime *itr;

 thread__set_comm(thread, idle_comm, 0);

 itr = zalloc(sizeof(*itr));
 if (itr == ((void*)0))
  return -ENOMEM;

 init_stats(&itr->tr.run_stats);
 callchain_init(&itr->callchain);
 callchain_cursor_reset(&itr->cursor);
 thread__set_priv(thread, itr);

 return 0;
}
