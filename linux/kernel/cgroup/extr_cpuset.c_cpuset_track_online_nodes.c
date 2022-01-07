
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 int cpuset_hotplug_work ;
 int schedule_work (int *) ;

__attribute__((used)) static int cpuset_track_online_nodes(struct notifier_block *self,
    unsigned long action, void *arg)
{
 schedule_work(&cpuset_hotplug_work);
 return NOTIFY_OK;
}
