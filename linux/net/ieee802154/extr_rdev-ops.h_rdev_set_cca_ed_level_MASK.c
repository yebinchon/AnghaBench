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
struct cfg802154_registered_device {int /*<<< orphan*/  wpan_phy; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_2__ {int (* set_cca_ed_level ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC3(struct cfg802154_registered_device *rdev, s32 ed_level)
{
	int ret;

	FUNC2(&rdev->wpan_phy, ed_level);
	ret = rdev->ops->set_cca_ed_level(&rdev->wpan_phy, ed_level);
	FUNC1(&rdev->wpan_phy, ret);
	return ret;
}