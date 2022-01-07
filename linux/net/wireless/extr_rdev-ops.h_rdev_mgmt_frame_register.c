
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* mgmt_frame_register ) (int *,struct wireless_dev*,int ,int) ;} ;


 int might_sleep () ;
 int stub1 (int *,struct wireless_dev*,int ,int) ;
 int trace_rdev_mgmt_frame_register (int *,struct wireless_dev*,int ,int) ;
 int trace_rdev_return_void (int *) ;

__attribute__((used)) static inline void
rdev_mgmt_frame_register(struct cfg80211_registered_device *rdev,
    struct wireless_dev *wdev, u16 frame_type, bool reg)
{
 might_sleep();

 trace_rdev_mgmt_frame_register(&rdev->wiphy, wdev , frame_type, reg);
 rdev->ops->mgmt_frame_register(&rdev->wiphy, wdev , frame_type, reg);
 trace_rdev_return_void(&rdev->wiphy);
}
