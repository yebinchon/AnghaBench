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
struct hw {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  GCTL_AID ; 
 int /*<<< orphan*/  GCTL_AIE ; 
 int /*<<< orphan*/  GLOBAL_CNTL_GCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hw*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct hw *hw)
{
	unsigned int gctl;
	int i;

	gctl = FUNC2(hw, GLOBAL_CNTL_GCTL);
	FUNC5(&gctl, GCTL_AIE, 0);
	FUNC3(hw, GLOBAL_CNTL_GCTL, gctl);
	FUNC5(&gctl, GCTL_AIE, 1);
	FUNC3(hw, GLOBAL_CNTL_GCTL, gctl);
	FUNC4(10);
	for (i = 0; i < 400000; i++) {
		gctl = FUNC2(hw, GLOBAL_CNTL_GCTL);
		if (FUNC1(gctl, GCTL_AID))
			break;
	}
	if (!FUNC1(gctl, GCTL_AID)) {
		FUNC0(hw->card->dev, "Card Auto-init failed!!!\n");
		return -EBUSY;
	}

	return 0;
}