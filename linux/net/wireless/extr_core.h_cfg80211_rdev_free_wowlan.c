
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* wowlan_config; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;
struct TYPE_4__ {int n_patterns; struct TYPE_4__* nd_config; struct TYPE_4__* tcp; scalar_t__ sock; struct TYPE_4__* patterns; struct TYPE_4__* mask; } ;


 int kfree (TYPE_2__*) ;
 int sock_release (scalar_t__) ;

__attribute__((used)) static inline void
cfg80211_rdev_free_wowlan(struct cfg80211_registered_device *rdev)
{
}
