
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_2__ {int (* tdls_channel_switch ) (int *,struct net_device*,int const*,int ,struct cfg80211_chan_def*) ;} ;


 int stub1 (int *,struct net_device*,int const*,int ,struct cfg80211_chan_def*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_tdls_channel_switch (int *,struct net_device*,int const*,int ,struct cfg80211_chan_def*) ;

__attribute__((used)) static inline int
rdev_tdls_channel_switch(struct cfg80211_registered_device *rdev,
    struct net_device *dev, const u8 *addr,
    u8 oper_class, struct cfg80211_chan_def *chandef)
{
 int ret;

 trace_rdev_tdls_channel_switch(&rdev->wiphy, dev, addr, oper_class,
           chandef);
 ret = rdev->ops->tdls_channel_switch(&rdev->wiphy, dev, addr,
          oper_class, chandef);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
