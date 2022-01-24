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
typedef  scalar_t__ u32 ;
struct lx6464es {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CHIPSC_RESET_XILINX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ePLX_CHIPSC ; 
 int /*<<< orphan*/  ePLX_MBOX3 ; 
 int /*<<< orphan*/  eReg_CSM ; 
 int /*<<< orphan*/  FUNC1 (struct lx6464es*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct lx6464es*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lx6464es*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct lx6464es *chip)
{
	int i;
	u32 plx_reg = FUNC2(chip, ePLX_CHIPSC);

	FUNC0(chip->card->dev, "->lx_init_xilinx_reset\n");

	/* activate reset of xilinx */
	plx_reg &= ~CHIPSC_RESET_XILINX;

	FUNC3(chip, ePLX_CHIPSC, plx_reg);
	FUNC4(1);

	FUNC3(chip, ePLX_MBOX3, 0);
	FUNC4(1);

	plx_reg |= CHIPSC_RESET_XILINX;
	FUNC3(chip, ePLX_CHIPSC, plx_reg);

	/* deactivate reset of xilinx */
	for (i = 0; i != 100; ++i) {
		u32 reg_mbox3;
		FUNC4(10);
		reg_mbox3 = FUNC2(chip, ePLX_MBOX3);
		if (reg_mbox3) {
			FUNC0(chip->card->dev, "xilinx reset done\n");
			FUNC0(chip->card->dev, "xilinx took %d loops\n", i);
			break;
		}
	}

	/* todo: add some error handling? */

	/* clear mr */
	FUNC1(chip, eReg_CSM, 0);

	/* le xilinx ES peut ne pas etre encore pret, on attend. */
	FUNC4(600);

	return 0;
}