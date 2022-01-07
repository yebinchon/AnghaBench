
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct station_info {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dump_station ) (int *,struct net_device*,int,int *,struct station_info*) ;} ;


 int stub1 (int *,struct net_device*,int,int *,struct station_info*) ;
 int trace_rdev_dump_station (int *,struct net_device*,int,int *) ;
 int trace_rdev_return_int_station_info (int *,int,struct station_info*) ;

__attribute__((used)) static inline int rdev_dump_station(struct cfg80211_registered_device *rdev,
        struct net_device *dev, int idx, u8 *mac,
        struct station_info *sinfo)
{
 int ret;
 trace_rdev_dump_station(&rdev->wiphy, dev, idx, mac);
 ret = rdev->ops->dump_station(&rdev->wiphy, dev, idx, mac, sinfo);
 trace_rdev_return_int_station_info(&rdev->wiphy, ret, sinfo);
 return ret;
}
