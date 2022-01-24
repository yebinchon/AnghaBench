#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct echoaudio {TYPE_2__* card; TYPE_1__* comm_page; } ;
typedef  scalar_t__ __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ control_register; scalar_t__ e3g_frq_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_VC_WRITE_CONTROL_REG ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct echoaudio*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC5(struct echoaudio *chip, u32 ctl, u32 frq,
			     char force)
{
	__le32 ctl_reg, frq_reg;

	if (FUNC4(chip))
		return -EIO;

	FUNC2(chip->card->dev,
		"WriteControlReg: Setting 0x%x, 0x%x\n", ctl, frq);

	ctl_reg = FUNC1(ctl);
	frq_reg = FUNC1(frq);

	if (ctl_reg != chip->comm_page->control_register ||
	    frq_reg != chip->comm_page->e3g_frq_register || force) {
		chip->comm_page->e3g_frq_register = frq_reg;
		chip->comm_page->control_register = ctl_reg;
		FUNC0(chip);
		return FUNC3(chip, DSP_VC_WRITE_CONTROL_REG);
	}

	FUNC2(chip->card->dev, "WriteControlReg: not written, no change\n");
	return 0;
}