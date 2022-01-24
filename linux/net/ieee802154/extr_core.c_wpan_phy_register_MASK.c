#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wpan_phy {int /*<<< orphan*/  dev; } ;
struct cfg802154_registered_device {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  cfg802154_rdev_list ; 
 int /*<<< orphan*/  cfg802154_rdev_list_generation ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct cfg802154_registered_device* FUNC4 (struct wpan_phy*) ; 

int FUNC5(struct wpan_phy *phy)
{
	struct cfg802154_registered_device *rdev = FUNC4(phy);
	int ret;

	FUNC2();
	ret = FUNC0(&phy->dev);
	if (ret) {
		FUNC3();
		return ret;
	}

	FUNC1(&rdev->list, &cfg802154_rdev_list);
	cfg802154_rdev_list_generation++;

	/* TODO phy registered lock */
	FUNC3();

	/* TODO nl802154 phy notify */

	return 0;
}