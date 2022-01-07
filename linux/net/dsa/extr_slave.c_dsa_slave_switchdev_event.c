
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_switchdev_event_work {unsigned long event; int work; struct net_device* dev; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;


 unsigned long SWITCHDEV_PORT_ATTR_SET ;
 int dev_hold (struct net_device*) ;
 int dsa_schedule_work (int *) ;
 int dsa_slave_dev_check (struct net_device*) ;
 int dsa_slave_port_attr_set ;
 int dsa_slave_switchdev_event_work ;
 int dsa_slave_switchdev_fdb_work_init (struct dsa_switchdev_event_work*,void*) ;
 int kfree (struct dsa_switchdev_event_work*) ;
 struct dsa_switchdev_event_work* kzalloc (int,int ) ;
 int notifier_from_errno (int) ;
 int switchdev_handle_port_attr_set (struct net_device*,void*,int (*) (struct net_device*),int ) ;
 struct net_device* switchdev_notifier_info_to_dev (void*) ;

__attribute__((used)) static int dsa_slave_switchdev_event(struct notifier_block *unused,
         unsigned long event, void *ptr)
{
 struct net_device *dev = switchdev_notifier_info_to_dev(ptr);
 struct dsa_switchdev_event_work *switchdev_work;
 int err;

 if (event == SWITCHDEV_PORT_ATTR_SET) {
  err = switchdev_handle_port_attr_set(dev, ptr,
           dsa_slave_dev_check,
           dsa_slave_port_attr_set);
  return notifier_from_errno(err);
 }

 if (!dsa_slave_dev_check(dev))
  return NOTIFY_DONE;

 switchdev_work = kzalloc(sizeof(*switchdev_work), GFP_ATOMIC);
 if (!switchdev_work)
  return NOTIFY_BAD;

 INIT_WORK(&switchdev_work->work,
    dsa_slave_switchdev_event_work);
 switchdev_work->dev = dev;
 switchdev_work->event = event;

 switch (event) {
 case 129:
 case 128:
  if (dsa_slave_switchdev_fdb_work_init(switchdev_work, ptr))
   goto err_fdb_work_init;
  dev_hold(dev);
  break;
 default:
  kfree(switchdev_work);
  return NOTIFY_DONE;
 }

 dsa_schedule_work(&switchdev_work->work);
 return NOTIFY_OK;

err_fdb_work_init:
 kfree(switchdev_work);
 return NOTIFY_BAD;
}
