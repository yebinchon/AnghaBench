
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int __iterate_supers (int ) ;
 int do_emergency_remount_callback ;
 int kfree (struct work_struct*) ;
 int printk (char*) ;

__attribute__((used)) static void do_emergency_remount(struct work_struct *work)
{
 __iterate_supers(do_emergency_remount_callback);
 kfree(work);
 printk("Emergency Remount complete\n");
}
