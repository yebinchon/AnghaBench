
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_gtk_rekey_data {int dummy; } ;
struct TYPE_2__ {int (* set_rekey_data ) (int *,struct net_device*,struct cfg80211_gtk_rekey_data*) ;} ;


 int stub1 (int *,struct net_device*,struct cfg80211_gtk_rekey_data*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_rekey_data (int *,struct net_device*) ;

__attribute__((used)) static inline int rdev_set_rekey_data(struct cfg80211_registered_device *rdev,
          struct net_device *dev,
          struct cfg80211_gtk_rekey_data *data)
{
 int ret;
 trace_rdev_set_rekey_data(&rdev->wiphy, dev);
 ret = rdev->ops->set_rekey_data(&rdev->wiphy, dev, data);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
