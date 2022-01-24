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
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  ePLX_PCICR ; 
 int /*<<< orphan*/  eReg_CSM ; 
 scalar_t__ FUNC2 (struct lx6464es*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lx6464es*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lx6464es*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct lx6464es *chip)
{
	u32 reg;

	FUNC0(chip->card->dev, "->lx_init_xilinx_test\n");

	/* TEST if we have access to Xilinx/MicroBlaze */
	FUNC3(chip, eReg_CSM, 0);

	reg = FUNC2(chip, eReg_CSM);

	if (reg) {
		FUNC1(chip->card->dev, "Problem: Reg_CSM %x.\n", reg);

		/* PCI9056_SPACE0_REMAP */
		FUNC4(chip, ePLX_PCICR, 1);

		reg = FUNC2(chip, eReg_CSM);
		if (reg) {
			FUNC1(chip->card->dev, "Error: Reg_CSM %x.\n", reg);
			return -EAGAIN; /* seems to be appropriate */
		}
	}

	FUNC0(chip->card->dev, "Xilinx/MicroBlaze access test successful\n");

	return 0;
}