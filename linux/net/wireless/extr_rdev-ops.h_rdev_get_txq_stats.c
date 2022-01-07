
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct cfg80211_txq_stats {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_txq_stats ) (int *,struct wireless_dev*,struct cfg80211_txq_stats*) ;} ;


 int stub1 (int *,struct wireless_dev*,struct cfg80211_txq_stats*) ;
 int trace_rdev_get_txq_stats (int *,struct wireless_dev*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int
rdev_get_txq_stats(struct cfg80211_registered_device *rdev,
     struct wireless_dev *wdev,
     struct cfg80211_txq_stats *txqstats)
{
 int ret;
 trace_rdev_get_txq_stats(&rdev->wiphy, wdev);
 ret = rdev->ops->get_txq_stats(&rdev->wiphy, wdev, txqstats);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
