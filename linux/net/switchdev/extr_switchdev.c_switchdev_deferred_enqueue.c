
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int switchdev_deferred_func_t ;
struct switchdev_deferred_item {int list; int data; int * func; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int deferred ;
 int deferred_lock ;
 int deferred_process_work ;
 int dev_hold (struct net_device*) ;
 struct switchdev_deferred_item* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,void const*,size_t) ;
 int schedule_work (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int switchdev_deferred_enqueue(struct net_device *dev,
          const void *data, size_t data_len,
          switchdev_deferred_func_t *func)
{
 struct switchdev_deferred_item *dfitem;

 dfitem = kmalloc(sizeof(*dfitem) + data_len, GFP_ATOMIC);
 if (!dfitem)
  return -ENOMEM;
 dfitem->dev = dev;
 dfitem->func = func;
 memcpy(dfitem->data, data, data_len);
 dev_hold(dev);
 spin_lock_bh(&deferred_lock);
 list_add_tail(&dfitem->list, &deferred);
 spin_unlock_bh(&deferred_lock);
 schedule_work(&deferred_process_work);
 return 0;
}
