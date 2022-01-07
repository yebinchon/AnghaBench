
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sched_cmdline_ref ;
 int sched_register_mutex ;
 int sched_tgid_ref ;
 int tracing_sched_unregister () ;

__attribute__((used)) static void tracing_stop_sched_switch(int ops)
{
 mutex_lock(&sched_register_mutex);

 switch (ops) {
 case 129:
  sched_cmdline_ref--;
  break;

 case 128:
  sched_tgid_ref--;
  break;
 }

 if (!sched_cmdline_ref && !sched_tgid_ref)
  tracing_sched_unregister();
 mutex_unlock(&sched_register_mutex);
}
