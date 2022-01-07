
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wireless_dev {TYPE_5__* netdev; TYPE_4__* current_bss; int wiphy; } ;
struct TYPE_7__ {int reason_code; } ;
struct TYPE_8__ {TYPE_1__ disassoc; } ;
struct ieee80211_mgmt {int sa; TYPE_2__ u; int * bssid; } ;
struct cfg80211_registered_device {int dummy; } ;
struct TYPE_11__ {int const* dev_addr; } ;
struct TYPE_9__ {int bssid; } ;
struct TYPE_10__ {TYPE_3__ pub; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __cfg80211_disconnected (TYPE_5__*,int *,int ,int ,int) ;
 int cfg80211_sme_disassoc (struct wireless_dev*) ;
 int ether_addr_equal (int ,int const*) ;
 int le16_to_cpu (int ) ;
 int nl80211_send_disassoc (struct cfg80211_registered_device*,TYPE_5__*,int const*,size_t,int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static void cfg80211_process_disassoc(struct wireless_dev *wdev,
          const u8 *buf, size_t len)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)buf;
 const u8 *bssid = mgmt->bssid;
 u16 reason_code = le16_to_cpu(mgmt->u.disassoc.reason_code);
 bool from_ap = !ether_addr_equal(mgmt->sa, wdev->netdev->dev_addr);

 nl80211_send_disassoc(rdev, wdev->netdev, buf, len, GFP_KERNEL);

 if (WARN_ON(!wdev->current_bss ||
      !ether_addr_equal(wdev->current_bss->pub.bssid, bssid)))
  return;

 __cfg80211_disconnected(wdev->netdev, ((void*)0), 0, reason_code, from_ap);
 cfg80211_sme_disassoc(wdev);
}
