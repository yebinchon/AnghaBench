
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* debugfsdir; int dev; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;
struct TYPE_4__ {int d_parent; } ;


 int ASSERT_RTNL () ;
 int NL80211_CMD_NEW_WIPHY ;
 int cfg80211_dev_check_name (struct cfg80211_registered_device*,char*) ;
 int debugfs_rename (int ,TYPE_2__*,int ,char*) ;
 int device_rename (int *,char*) ;
 int nl80211_notify_wiphy (struct cfg80211_registered_device*,int ) ;
 scalar_t__ strcmp (char*,int ) ;
 int wiphy_name (TYPE_1__*) ;

int cfg80211_dev_rename(struct cfg80211_registered_device *rdev,
   char *newname)
{
 int result;

 ASSERT_RTNL();


 if (strcmp(newname, wiphy_name(&rdev->wiphy)) == 0)
  return 0;

 result = cfg80211_dev_check_name(rdev, newname);
 if (result < 0)
  return result;

 result = device_rename(&rdev->wiphy.dev, newname);
 if (result)
  return result;

 if (rdev->wiphy.debugfsdir)
  debugfs_rename(rdev->wiphy.debugfsdir->d_parent,
          rdev->wiphy.debugfsdir,
          rdev->wiphy.debugfsdir->d_parent, newname);

 nl80211_notify_wiphy(rdev, NL80211_CMD_NEW_WIPHY);

 return 0;
}
