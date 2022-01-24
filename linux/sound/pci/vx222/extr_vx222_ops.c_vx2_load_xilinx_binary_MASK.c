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
struct vx_core {scalar_t__ type; TYPE_1__* card; } ;
struct firmware {unsigned char* data; unsigned int size; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTRL ; 
 int EINVAL ; 
 int /*<<< orphan*/  GPIOC ; 
 unsigned int VX_CNTRL ; 
 int VX_CNTRL_REGISTER_VALUE ; 
 unsigned int VX_GPIOC ; 
 scalar_t__ VX_TYPE_BOARD ; 
 int VX_XILINX_RESET_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct vx_core*,unsigned int,int,unsigned char const) ; 
 unsigned int FUNC4 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vx_core*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct vx_core *chip, const struct firmware *xilinx)
{
	unsigned int i;
	unsigned int port;
	const unsigned char *image;

	/* XILINX reset (wait at least 1 millisecond between reset on and off). */
	FUNC5(chip, CNTRL, VX_CNTRL_REGISTER_VALUE | VX_XILINX_RESET_MASK);
	FUNC4(chip, CNTRL);
	FUNC2(10);
	FUNC5(chip, CNTRL, VX_CNTRL_REGISTER_VALUE);
	FUNC4(chip, CNTRL);
	FUNC2(10);

	if (chip->type == VX_TYPE_BOARD)
		port = VX_CNTRL;
	else
		port = VX_GPIOC; /* VX222 V2 and VX222_MIC_BOARD with new PLX9030 use this register */

	image = xilinx->data;
	for (i = 0; i < xilinx->size; i++, image++) {
		if (FUNC3(chip, port, 8, *image) < 0)
			return -EINVAL;
		/* don't take too much time in this loop... */
		FUNC0();
	}
	FUNC3(chip, port, 4, 0xff); /* end signature */

	FUNC2(200);

	/* test after loading (is buggy with VX222) */
	if (chip->type != VX_TYPE_BOARD) {
		/* Test if load successful: test bit 8 of register GPIOC (VX222: use CNTRL) ! */
		i = FUNC4(chip, GPIOC);
		if (i & 0x0100)
			return 0;
		FUNC1(chip->card->dev,
			"xilinx test failed after load, GPIOC=0x%x\n", i);
		return -EINVAL;
	}

	return 0;
}