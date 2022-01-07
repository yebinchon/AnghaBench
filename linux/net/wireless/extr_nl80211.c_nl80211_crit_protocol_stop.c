
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {scalar_t__ crit_proto_nlportid; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct genl_info {struct wireless_dev** user_ptr; } ;
struct cfg80211_registered_device {scalar_t__ crit_proto_nlportid; TYPE_1__* ops; } ;
struct TYPE_2__ {int crit_proto_stop; } ;


 int EOPNOTSUPP ;
 int rdev_crit_proto_stop (struct wireless_dev*,struct wireless_dev*) ;

__attribute__((used)) static int nl80211_crit_protocol_stop(struct sk_buff *skb,
          struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct wireless_dev *wdev = info->user_ptr[1];

 if (!rdev->ops->crit_proto_stop)
  return -EOPNOTSUPP;

 if (rdev->crit_proto_nlportid) {
  rdev->crit_proto_nlportid = 0;
  rdev_crit_proto_stop(rdev, wdev);
 }
 return 0;
}
