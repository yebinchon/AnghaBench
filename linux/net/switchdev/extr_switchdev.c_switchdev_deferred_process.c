
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_deferred_item {int dev; int data; int (* func ) (int ,int ) ;} ;


 int ASSERT_RTNL () ;
 int dev_put (int ) ;
 int kfree (struct switchdev_deferred_item*) ;
 int stub1 (int ,int ) ;
 struct switchdev_deferred_item* switchdev_deferred_dequeue () ;

void switchdev_deferred_process(void)
{
 struct switchdev_deferred_item *dfitem;

 ASSERT_RTNL();

 while ((dfitem = switchdev_deferred_dequeue())) {
  dfitem->func(dfitem->dev, dfitem->data);
  dev_put(dfitem->dev);
  kfree(dfitem);
 }
}
