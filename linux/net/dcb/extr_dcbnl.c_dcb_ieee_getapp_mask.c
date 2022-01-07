
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int ifindex; } ;
struct TYPE_2__ {int priority; } ;
struct dcb_app_type {TYPE_1__ app; } ;
struct dcb_app {int dummy; } ;


 struct dcb_app_type* dcb_app_lookup (struct dcb_app*,int ,int) ;
 int dcb_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

u8 dcb_ieee_getapp_mask(struct net_device *dev, struct dcb_app *app)
{
 struct dcb_app_type *itr;
 u8 prio = 0;

 spin_lock_bh(&dcb_lock);
 itr = dcb_app_lookup(app, dev->ifindex, -1);
 if (itr)
  prio |= 1 << itr->app.priority;
 spin_unlock_bh(&dcb_lock);

 return prio;
}
