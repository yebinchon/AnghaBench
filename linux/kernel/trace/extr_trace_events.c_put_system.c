
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_subsystem_dir {int dummy; } ;


 int __put_system_dir (struct trace_subsystem_dir*) ;
 int event_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void put_system(struct trace_subsystem_dir *dir)
{
 mutex_lock(&event_mutex);
 __put_system_dir(dir);
 mutex_unlock(&event_mutex);
}
