
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct station_del_parameters {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* del_station ) (int *,struct net_device*,struct station_del_parameters*) ;} ;


 int stub1 (int *,struct net_device*,struct station_del_parameters*) ;
 int trace_rdev_del_station (int *,struct net_device*,struct station_del_parameters*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_del_station(struct cfg80211_registered_device *rdev,
       struct net_device *dev,
       struct station_del_parameters *params)
{
 int ret;
 trace_rdev_del_station(&rdev->wiphy, dev, params);
 ret = rdev->ops->del_station(&rdev->wiphy, dev, params);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
