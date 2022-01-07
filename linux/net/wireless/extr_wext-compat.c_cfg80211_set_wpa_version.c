
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int wpa_versions; } ;
struct TYPE_5__ {TYPE_1__ crypto; } ;
struct TYPE_6__ {TYPE_2__ connect; } ;
struct wireless_dev {TYPE_3__ wext; } ;


 int EINVAL ;
 int IW_AUTH_WPA_VERSION_DISABLED ;
 int IW_AUTH_WPA_VERSION_WPA ;
 int IW_AUTH_WPA_VERSION_WPA2 ;
 int NL80211_WPA_VERSION_1 ;
 int NL80211_WPA_VERSION_2 ;

__attribute__((used)) static int cfg80211_set_wpa_version(struct wireless_dev *wdev, u32 wpa_versions)
{
 if (wpa_versions & ~(IW_AUTH_WPA_VERSION_WPA |
        IW_AUTH_WPA_VERSION_WPA2|
               IW_AUTH_WPA_VERSION_DISABLED))
  return -EINVAL;

 if ((wpa_versions & IW_AUTH_WPA_VERSION_DISABLED) &&
     (wpa_versions & (IW_AUTH_WPA_VERSION_WPA|
        IW_AUTH_WPA_VERSION_WPA2)))
  return -EINVAL;

 if (wpa_versions & IW_AUTH_WPA_VERSION_DISABLED)
  wdev->wext.connect.crypto.wpa_versions &=
   ~(NL80211_WPA_VERSION_1|NL80211_WPA_VERSION_2);

 if (wpa_versions & IW_AUTH_WPA_VERSION_WPA)
  wdev->wext.connect.crypto.wpa_versions |=
   NL80211_WPA_VERSION_1;

 if (wpa_versions & IW_AUTH_WPA_VERSION_WPA2)
  wdev->wext.connect.crypto.wpa_versions |=
   NL80211_WPA_VERSION_2;

 return 0;
}
