
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_driver {struct proc_dir_entry* proc_entry; TYPE_1__* ops; int driver_name; } ;
struct proc_dir_entry {int dummy; } ;
struct TYPE_2__ {int proc_show; } ;


 struct proc_dir_entry* proc_create_single_data (int ,int ,int ,int ,struct tty_driver*) ;
 int proc_tty_driver ;

void proc_tty_register_driver(struct tty_driver *driver)
{
 struct proc_dir_entry *ent;

 if (!driver->driver_name || driver->proc_entry ||
     !driver->ops->proc_show)
  return;

 ent = proc_create_single_data(driver->driver_name, 0, proc_tty_driver,
          driver->ops->proc_show, driver);
 driver->proc_entry = ent;
}
