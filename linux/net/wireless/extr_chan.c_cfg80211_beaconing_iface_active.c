
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct wireless_dev {int iftype; int mesh_id_len; int ssid_len; int beacon_interval; TYPE_1__ chandef; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int WARN_ON (int) ;

bool cfg80211_beaconing_iface_active(struct wireless_dev *wdev)
{
 bool active = 0;

 ASSERT_WDEV_LOCK(wdev);

 if (!wdev->chandef.chan)
  return 0;

 switch (wdev->iftype) {
 case 140:
 case 132:
  active = wdev->beacon_interval != 0;
  break;
 case 141:
  active = wdev->ssid_len != 0;
  break;
 case 138:
  active = wdev->mesh_id_len != 0;
  break;
 case 131:
 case 135:
 case 134:
 case 137:
 case 139:
 case 129:
 case 133:

 case 136:
  break;
 case 130:
 case 128:
  WARN_ON(1);
 }

 return active;
}
