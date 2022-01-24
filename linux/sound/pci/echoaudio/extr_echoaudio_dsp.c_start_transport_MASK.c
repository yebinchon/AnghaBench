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
struct echoaudio {TYPE_1__* card; TYPE_2__* comm_page; int /*<<< orphan*/  active_mask; } ;
struct TYPE_4__ {int cmd_start; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_VC_START_TRANSFER ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct echoaudio*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC5(struct echoaudio *chip, u32 channel_mask,
			   u32 cyclic_mask)
{

	if (FUNC4(chip))
		return -EIO;

	chip->comm_page->cmd_start |= FUNC1(channel_mask);

	if (chip->comm_page->cmd_start) {
		FUNC0(chip);
		FUNC3(chip, DSP_VC_START_TRANSFER);
		if (FUNC4(chip))
			return -EIO;
		/* Keep track of which pipes are transporting */
		chip->active_mask |= channel_mask;
		chip->comm_page->cmd_start = 0;
		return 0;
	}

	FUNC2(chip->card->dev, "start_transport: No pipes to start!\n");
	return -EINVAL;
}