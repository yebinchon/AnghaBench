
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int iftype; int current_bss; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int EINVAL ;
 int ENOLINK ;
__attribute__((used)) static int nl80211_key_allowed(struct wireless_dev *wdev)
{
 ASSERT_WDEV_LOCK(wdev);

 switch (wdev->iftype) {
 case 140:
 case 139:
 case 132:
 case 138:
  break;
 case 141:
 case 131:
 case 134:
  if (!wdev->current_bss)
   return -ENOLINK;
  break;
 case 130:
 case 135:
 case 137:
 case 136:
 case 133:
 case 129:
 case 128:
  return -EINVAL;
 }

 return 0;
}
