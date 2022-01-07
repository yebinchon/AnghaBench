
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int state; } ;


 int __LINK_STATE_LINKWATCH_PENDING ;
 int linkwatch_add_event (struct net_device*) ;
 int linkwatch_schedule_work (int) ;
 int linkwatch_urgent_event (struct net_device*) ;
 int test_and_set_bit (int ,int *) ;

void linkwatch_fire_event(struct net_device *dev)
{
 bool urgent = linkwatch_urgent_event(dev);

 if (!test_and_set_bit(__LINK_STATE_LINKWATCH_PENDING, &dev->state)) {
  linkwatch_add_event(dev);
 } else if (!urgent)
  return;

 linkwatch_schedule_work(urgent);
}
