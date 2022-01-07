
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ console_trylock () ;
 int console_unlock () ;
 int cpuhp_tasks_frozen ;

__attribute__((used)) static int console_cpu_notify(unsigned int cpu)
{
 if (!cpuhp_tasks_frozen) {

  if (console_trylock())
   console_unlock();
 }
 return 0;
}
