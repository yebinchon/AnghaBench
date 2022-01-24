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
typedef  int /*<<< orphan*/  u8 ;
struct wpan_dev {int dummy; } ;
struct cfg802154_registered_device {int /*<<< orphan*/  wpan_phy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_max_csma_backoffs ) (int /*<<< orphan*/ *,struct wpan_dev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct wpan_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct wpan_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC3(struct cfg802154_registered_device *rdev,
			   struct wpan_dev *wpan_dev, u8 max_csma_backoffs)
{
	int ret;

	FUNC2(&rdev->wpan_phy, wpan_dev,
					    max_csma_backoffs);
	ret = rdev->ops->set_max_csma_backoffs(&rdev->wpan_phy, wpan_dev,
					       max_csma_backoffs);
	FUNC1(&rdev->wpan_phy, ret);
	return ret;
}