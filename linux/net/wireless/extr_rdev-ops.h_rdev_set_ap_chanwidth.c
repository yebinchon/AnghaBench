
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_2__ {int (* set_ap_chanwidth ) (int *,struct net_device*,struct cfg80211_chan_def*) ;} ;


 int stub1 (int *,struct net_device*,struct cfg80211_chan_def*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_ap_chanwidth (int *,struct net_device*,struct cfg80211_chan_def*) ;

__attribute__((used)) static inline int
rdev_set_ap_chanwidth(struct cfg80211_registered_device *rdev,
        struct net_device *dev, struct cfg80211_chan_def *chandef)
{
 int ret;

 trace_rdev_set_ap_chanwidth(&rdev->wiphy, dev, chandef);
 ret = rdev->ops->set_ap_chanwidth(&rdev->wiphy, dev, chandef);
 trace_rdev_return_int(&rdev->wiphy, ret);

 return ret;
}
