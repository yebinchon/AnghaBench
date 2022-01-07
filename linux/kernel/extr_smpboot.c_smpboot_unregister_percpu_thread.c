
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_hotplug_thread {int list; } ;


 int get_online_cpus () ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_online_cpus () ;
 int smpboot_destroy_threads (struct smp_hotplug_thread*) ;
 int smpboot_threads_lock ;

void smpboot_unregister_percpu_thread(struct smp_hotplug_thread *plug_thread)
{
 get_online_cpus();
 mutex_lock(&smpboot_threads_lock);
 list_del(&plug_thread->list);
 smpboot_destroy_threads(plug_thread);
 mutex_unlock(&smpboot_threads_lock);
 put_online_cpus();
}
