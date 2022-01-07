
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned char operstate; int link_mode; } ;




 unsigned char IF_OPER_DORMANT ;
 unsigned char IF_OPER_UP ;
 unsigned char default_operstate (struct net_device*) ;
 int dev_base_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void rfc2863_policy(struct net_device *dev)
{
 unsigned char operstate = default_operstate(dev);

 if (operstate == dev->operstate)
  return;

 write_lock_bh(&dev_base_lock);

 switch(dev->link_mode) {
 case 128:
  if (operstate == IF_OPER_UP)
   operstate = IF_OPER_DORMANT;
  break;

 case 129:
 default:
  break;
 }

 dev->operstate = operstate;

 write_unlock_bh(&dev_base_lock);
}
