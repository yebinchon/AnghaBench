
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct list_head {int dummy; } ;


 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;

__attribute__((used)) static void xfrmi_dellink(struct net_device *dev, struct list_head *head)
{
 unregister_netdevice_queue(dev, head);
}
