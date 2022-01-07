
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_bearer {int pt; int media_ptr; } ;
struct net_device {int tipc_ptr; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int dev_put (struct net_device*) ;
 int dev_remove_pack (int *) ;
 scalar_t__ rtnl_dereference (int ) ;
 int synchronize_net () ;

void tipc_disable_l2_media(struct tipc_bearer *b)
{
 struct net_device *dev;

 dev = (struct net_device *)rtnl_dereference(b->media_ptr);
 dev_remove_pack(&b->pt);
 RCU_INIT_POINTER(dev->tipc_ptr, ((void*)0));
 synchronize_net();
 dev_put(dev);
}
