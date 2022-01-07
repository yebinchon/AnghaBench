
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_online (int ) ;
 scalar_t__ have_callable_console () ;
 int raw_smp_processor_id () ;

__attribute__((used)) static inline int can_use_console(void)
{
 return cpu_online(raw_smp_processor_id()) || have_callable_console();
}
