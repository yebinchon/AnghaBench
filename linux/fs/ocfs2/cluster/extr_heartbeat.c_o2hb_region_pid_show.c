
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {scalar_t__ hr_task; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
typedef int pid_t ;


 int o2hb_live_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int task_pid_nr (scalar_t__) ;
 struct o2hb_region* to_o2hb_region (struct config_item*) ;

__attribute__((used)) static ssize_t o2hb_region_pid_show(struct config_item *item, char *page)
{
 struct o2hb_region *reg = to_o2hb_region(item);
 pid_t pid = 0;

 spin_lock(&o2hb_live_lock);
 if (reg->hr_task)
  pid = task_pid_nr(reg->hr_task);
 spin_unlock(&o2hb_live_lock);

 if (!pid)
  return 0;

 return sprintf(page, "%u\n", pid);
}
