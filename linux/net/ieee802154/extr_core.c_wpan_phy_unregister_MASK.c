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
struct cfg802154_registered_device {int opencount; int /*<<< orphan*/  list; int /*<<< orphan*/  wpan_dev_list; int /*<<< orphan*/  dev_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cfg802154_rdev_list_generation ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cfg802154_registered_device* FUNC8 (struct wpan_phy*) ; 

void FUNC9(struct wpan_phy *phy)
{
	struct cfg802154_registered_device *rdev = FUNC8(phy);

	FUNC7(rdev->dev_wait, ({
		int __count;
		FUNC4();
		__count = rdev->opencount;
		FUNC5();
		__count == 0; }));

	FUNC4();
	/* TODO nl802154 phy notify */
	/* TODO phy registered lock */

	FUNC0(!FUNC3(&rdev->wpan_dev_list));

	/* First remove the hardware from everywhere, this makes
	 * it impossible to find from userspace.
	 */
	FUNC2(&rdev->list);
	FUNC6();

	cfg802154_rdev_list_generation++;

	FUNC1(&phy->dev);

	FUNC5();
}