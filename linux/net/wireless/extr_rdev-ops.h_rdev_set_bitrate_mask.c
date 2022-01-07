
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_bitrate_mask {int dummy; } ;
struct TYPE_2__ {int (* set_bitrate_mask ) (int *,struct net_device*,int const*,struct cfg80211_bitrate_mask const*) ;} ;


 int stub1 (int *,struct net_device*,int const*,struct cfg80211_bitrate_mask const*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_bitrate_mask (int *,struct net_device*,int const*,struct cfg80211_bitrate_mask const*) ;

__attribute__((used)) static inline int
rdev_set_bitrate_mask(struct cfg80211_registered_device *rdev,
        struct net_device *dev, const u8 *peer,
        const struct cfg80211_bitrate_mask *mask)
{
 int ret;
 trace_rdev_set_bitrate_mask(&rdev->wiphy, dev, peer, mask);
 ret = rdev->ops->set_bitrate_mask(&rdev->wiphy, dev, peer, mask);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
