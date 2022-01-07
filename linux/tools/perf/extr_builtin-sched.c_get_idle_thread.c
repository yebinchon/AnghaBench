
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int __roundup_pow_of_two (int) ;
 int idle_max_cpu ;
 struct thread** idle_threads ;
 scalar_t__ init_idle_thread (struct thread*) ;
 void* realloc (struct thread**,int) ;
 struct thread* thread__new (int ,int ) ;

__attribute__((used)) static struct thread *get_idle_thread(int cpu)
{




 if ((cpu >= idle_max_cpu) || (idle_threads == ((void*)0))) {
  int i, j = __roundup_pow_of_two(cpu+1);
  void *p;

  p = realloc(idle_threads, j * sizeof(struct thread *));
  if (!p)
   return ((void*)0);

  idle_threads = (struct thread **) p;
  for (i = idle_max_cpu; i < j; ++i)
   idle_threads[i] = ((void*)0);

  idle_max_cpu = j;
 }


 if (idle_threads[cpu] == ((void*)0)) {
  idle_threads[cpu] = thread__new(0, 0);

  if (idle_threads[cpu]) {
   if (init_idle_thread(idle_threads[cpu]) < 0)
    return ((void*)0);
  }
 }

 return idle_threads[cpu];
}
