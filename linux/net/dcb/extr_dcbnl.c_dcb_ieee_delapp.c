
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int ifindex; TYPE_1__* dcbnl_ops; } ;
struct dcb_app_type {int list; int dcbx; int app; int ifindex; } ;
struct dcb_app {int priority; } ;
struct TYPE_2__ {int (* getdcbx ) (struct net_device*) ;} ;


 int DCB_APP_EVENT ;
 int ENOENT ;
 int call_dcbevent_notifiers (int ,struct dcb_app_type*) ;
 struct dcb_app_type* dcb_app_lookup (struct dcb_app*,int ,int ) ;
 int dcb_lock ;
 int kfree (struct dcb_app_type*) ;
 int list_del (int *) ;
 int memcpy (int *,struct dcb_app*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct net_device*) ;

int dcb_ieee_delapp(struct net_device *dev, struct dcb_app *del)
{
 struct dcb_app_type *itr;
 struct dcb_app_type event;
 int err = -ENOENT;

 event.ifindex = dev->ifindex;
 memcpy(&event.app, del, sizeof(event.app));
 if (dev->dcbnl_ops->getdcbx)
  event.dcbx = dev->dcbnl_ops->getdcbx(dev);

 spin_lock_bh(&dcb_lock);

 if ((itr = dcb_app_lookup(del, dev->ifindex, del->priority))) {
  list_del(&itr->list);
  kfree(itr);
  err = 0;
 }

 spin_unlock_bh(&dcb_lock);
 if (!err)
  call_dcbevent_notifiers(DCB_APP_EVENT, &event);
 return err;
}
