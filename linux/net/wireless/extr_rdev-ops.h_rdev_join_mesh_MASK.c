#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct mesh_setup {int dummy; } ;
struct mesh_config {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* join_mesh ) (int /*<<< orphan*/ *,struct net_device*,struct mesh_config const*,struct mesh_setup const*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct net_device*,struct mesh_config const*,struct mesh_setup const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct net_device*,struct mesh_config const*,struct mesh_setup const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC3(struct cfg80211_registered_device *rdev,
				 struct net_device *dev,
				 const struct mesh_config *conf,
				 const struct mesh_setup *setup)
{
	int ret;
	FUNC1(&rdev->wiphy, dev, conf, setup);
	ret = rdev->ops->join_mesh(&rdev->wiphy, dev, conf, setup);
	FUNC2(&rdev->wiphy, ret);
	return ret;
}