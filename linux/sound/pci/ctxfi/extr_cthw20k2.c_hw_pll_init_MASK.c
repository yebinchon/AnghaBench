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
 int /*<<< orphan*/  PLLCTL_B ; 
 int /*<<< orphan*/  PLLCTL_FD ; 
 int /*<<< orphan*/  PLLCTL_RD ; 
 int /*<<< orphan*/  PLLCTL_SRC ; 
 int /*<<< orphan*/  PLLSTAT_B ; 
 int /*<<< orphan*/  PLLSTAT_CCS ; 
 int /*<<< orphan*/  PLLSTAT_CFD ; 
 int /*<<< orphan*/  PLLSTAT_CRD ; 
 int /*<<< orphan*/  PLLSTAT_PD ; 
 int /*<<< orphan*/  PLL_CTL ; 
 int /*<<< orphan*/  PLL_ENB ; 
 int /*<<< orphan*/  PLL_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hw*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct hw *hw, unsigned int rsr)
{
	unsigned int pllenb;
	unsigned int pllctl;
	unsigned int pllstat;
	int i;

	pllenb = 0xB;
	FUNC3(hw, PLL_ENB, pllenb);
	pllctl = 0x20C00000;
	FUNC5(&pllctl, PLLCTL_B, 0);
	FUNC5(&pllctl, PLLCTL_FD, 48000 == rsr ? 16 - 4 : 147 - 4);
	FUNC5(&pllctl, PLLCTL_RD, 48000 == rsr ? 1 - 1 : 10 - 1);
	FUNC3(hw, PLL_CTL, pllctl);
	FUNC4(40);

	pllctl = FUNC2(hw, PLL_CTL);
	FUNC5(&pllctl, PLLCTL_FD, 48000 == rsr ? 16 - 2 : 147 - 2);
	FUNC3(hw, PLL_CTL, pllctl);
	FUNC4(40);

	for (i = 0; i < 1000; i++) {
		pllstat = FUNC2(hw, PLL_STAT);
		if (FUNC1(pllstat, PLLSTAT_PD))
			continue;

		if (FUNC1(pllstat, PLLSTAT_B) !=
					FUNC1(pllctl, PLLCTL_B))
			continue;

		if (FUNC1(pllstat, PLLSTAT_CCS) !=
					FUNC1(pllctl, PLLCTL_SRC))
			continue;

		if (FUNC1(pllstat, PLLSTAT_CRD) !=
					FUNC1(pllctl, PLLCTL_RD))
			continue;

		if (FUNC1(pllstat, PLLSTAT_CFD) !=
					FUNC1(pllctl, PLLCTL_FD))
			continue;

		break;
	}
	if (i >= 1000) {
		FUNC0(hw->card->dev,
			  "PLL initialization failed!!!\n");
		return -EBUSY;
	}

	return 0;
}