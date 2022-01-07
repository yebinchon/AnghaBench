
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int default_key; } ;
struct wireless_dev {scalar_t__ iftype; TYPE_2__ wext; scalar_t__ current_bss; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct key_params {char* key; int key_len; int cipher; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
typedef int params ;
struct TYPE_3__ {int set_default_key; int add_key; int del_key; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_INDEX ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int WLAN_CIPHER_SUITE_WEP104 ;
 int WLAN_CIPHER_SUITE_WEP40 ;
 int cfg80211_set_encryption (struct cfg80211_registered_device*,struct net_device*,int,int *,int,int,int,struct key_params*) ;
 int memset (struct key_params*,int ,int) ;
 int rdev_set_default_key (struct cfg80211_registered_device*,struct net_device*,int,int,int) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static int cfg80211_wext_siwencode(struct net_device *dev,
       struct iw_request_info *info,
       struct iw_point *erq, char *keybuf)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 int idx, err;
 bool remove = 0;
 struct key_params params;

 if (wdev->iftype != NL80211_IFTYPE_STATION &&
     wdev->iftype != NL80211_IFTYPE_ADHOC)
  return -EOPNOTSUPP;


 if (!rdev->ops->del_key ||
     !rdev->ops->add_key ||
     !rdev->ops->set_default_key)
  return -EOPNOTSUPP;

 idx = erq->flags & IW_ENCODE_INDEX;
 if (idx == 0) {
  idx = wdev->wext.default_key;
  if (idx < 0)
   idx = 0;
 } else if (idx < 1 || idx > 4)
  return -EINVAL;
 else
  idx--;

 if (erq->flags & IW_ENCODE_DISABLED)
  remove = 1;
 else if (erq->length == 0) {

  err = 0;
  wdev_lock(wdev);
  if (wdev->current_bss)
   err = rdev_set_default_key(rdev, dev, idx, 1,
         1);
  if (!err)
   wdev->wext.default_key = idx;
  wdev_unlock(wdev);
  return err;
 }

 memset(&params, 0, sizeof(params));
 params.key = keybuf;
 params.key_len = erq->length;
 if (erq->length == 5)
  params.cipher = WLAN_CIPHER_SUITE_WEP40;
 else if (erq->length == 13)
  params.cipher = WLAN_CIPHER_SUITE_WEP104;
 else if (!remove)
  return -EINVAL;

 return cfg80211_set_encryption(rdev, dev, 0, ((void*)0), remove,
           wdev->wext.default_key == -1,
           idx, &params);
}
