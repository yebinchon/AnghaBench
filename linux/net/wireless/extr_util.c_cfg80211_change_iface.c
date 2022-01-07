
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vif_params {int use_4addr; } ;
struct net_device {int priv_flags; TYPE_3__* ieee80211_ptr; } ;
struct TYPE_7__ {int interface_modes; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; TYPE_1__* ops; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_8__ {int iftype; int use_4addr; scalar_t__ mesh_id_up_len; } ;
struct TYPE_6__ {int change_virtual_intf; } ;


 int ASSERT_RTNL () ;
 int EBUSY ;
 int EOPNOTSUPP ;
 int IFF_BRIDGE_PORT ;
 int IFF_DONT_BRIDGE ;
 int WARN_ON (int) ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int cfg80211_disconnect (struct cfg80211_registered_device*,struct net_device*,int ,int) ;
 int cfg80211_leave_ibss (struct cfg80211_registered_device*,struct net_device*,int) ;
 int cfg80211_mlme_purge_registrations (TYPE_3__*) ;
 int cfg80211_process_rdev_events (struct cfg80211_registered_device*) ;
 int cfg80211_stop_ap (struct cfg80211_registered_device*,struct net_device*,int) ;
 int cfg80211_update_iface_num (struct cfg80211_registered_device*,int,int) ;
 scalar_t__ netif_running (struct net_device*) ;
 int rdev_change_virtual_intf (struct cfg80211_registered_device*,struct net_device*,int,struct vif_params*) ;
 int rdev_set_qos_map (struct cfg80211_registered_device*,struct net_device*,int *) ;
 int wdev_lock (TYPE_3__*) ;
 int wdev_unlock (TYPE_3__*) ;

int cfg80211_change_iface(struct cfg80211_registered_device *rdev,
     struct net_device *dev, enum nl80211_iftype ntype,
     struct vif_params *params)
{
 int err;
 enum nl80211_iftype otype = dev->ieee80211_ptr->iftype;

 ASSERT_RTNL();


 if (otype == 139)
  return -EOPNOTSUPP;


 if (ntype == 133 ||
     ntype == 136)
  return -EOPNOTSUPP;

 if (!rdev->ops->change_virtual_intf ||
     !(rdev->wiphy.interface_modes & (1 << ntype)))
  return -EOPNOTSUPP;


 if ((dev->priv_flags & IFF_BRIDGE_PORT) &&
     (ntype == 141 ||
      ntype == 131 ||
      ntype == 134))
  return -EBUSY;

 if (ntype != otype) {
  dev->ieee80211_ptr->use_4addr = 0;
  dev->ieee80211_ptr->mesh_id_up_len = 0;
  wdev_lock(dev->ieee80211_ptr);
  rdev_set_qos_map(rdev, dev, ((void*)0));
  wdev_unlock(dev->ieee80211_ptr);

  switch (otype) {
  case 140:
   cfg80211_stop_ap(rdev, dev, 1);
   break;
  case 141:
   cfg80211_leave_ibss(rdev, dev, 0);
   break;
  case 131:
  case 134:
   wdev_lock(dev->ieee80211_ptr);
   cfg80211_disconnect(rdev, dev,
         WLAN_REASON_DEAUTH_LEAVING, 1);
   wdev_unlock(dev->ieee80211_ptr);
   break;
  case 138:

   break;
  default:
   break;
  }

  cfg80211_process_rdev_events(rdev);
  cfg80211_mlme_purge_registrations(dev->ieee80211_ptr);
 }

 err = rdev_change_virtual_intf(rdev, dev, ntype, params);

 WARN_ON(!err && dev->ieee80211_ptr->iftype != ntype);

 if (!err && params && params->use_4addr != -1)
  dev->ieee80211_ptr->use_4addr = params->use_4addr;

 if (!err) {
  dev->priv_flags &= ~IFF_DONT_BRIDGE;
  switch (ntype) {
  case 131:
   if (dev->ieee80211_ptr->use_4addr)
    break;

  case 135:
  case 134:
  case 141:
   dev->priv_flags |= IFF_DONT_BRIDGE;
   break;
  case 132:
  case 140:
  case 139:
  case 129:
  case 138:

   break;
  case 137:

   break;
  case 130:
  case 128:

   break;
  case 133:
  case 136:
   WARN_ON(1);
   break;
  }
 }

 if (!err && ntype != otype && netif_running(dev)) {
  cfg80211_update_iface_num(rdev, ntype, 1);
  cfg80211_update_iface_num(rdev, otype, -1);
 }

 return err;
}
