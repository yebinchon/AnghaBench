
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int ifindex; TYPE_1__* dcbnl_ops; } ;
struct dcb_app_type {int dcbx; int app; int ifindex; } ;
struct dcb_app {int priority; } ;
struct TYPE_2__ {int (* getdcbx ) (struct net_device*) ;} ;


 int DCB_APP_EVENT ;
 int EEXIST ;
 int call_dcbevent_notifiers (int ,struct dcb_app_type*) ;
 int dcb_app_add (struct dcb_app*,int ) ;
 scalar_t__ dcb_app_lookup (struct dcb_app*,int ,int ) ;
 int dcb_lock ;
 int memcpy (int *,struct dcb_app*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct net_device*) ;

int dcb_ieee_setapp(struct net_device *dev, struct dcb_app *new)
{
 struct dcb_app_type event;
 int err = 0;

 event.ifindex = dev->ifindex;
 memcpy(&event.app, new, sizeof(event.app));
 if (dev->dcbnl_ops->getdcbx)
  event.dcbx = dev->dcbnl_ops->getdcbx(dev);

 spin_lock_bh(&dcb_lock);

 if (dcb_app_lookup(new, dev->ifindex, new->priority)) {
  err = -EEXIST;
  goto out;
 }

 err = dcb_app_add(new, dev->ifindex);
out:
 spin_unlock_bh(&dcb_lock);
 if (!err)
  call_dcbevent_notifiers(DCB_APP_EVENT, &event);
 return err;
}
