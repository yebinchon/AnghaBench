#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int stat_len; int* stat; int /*<<< orphan*/ * cmd; } ;
struct lx6464es {int /*<<< orphan*/  msg_lock; TYPE_2__ rmh; TYPE_1__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_0A_GET_PIPE_SPL_COUNT ; 
 int MASK_SPL_COUNT_HI ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lx6464es*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct lx6464es *chip, u32 pipe, int is_capture,
			 u64 *rsample_count)
{
	int err;
	u32 pipe_cmd = FUNC0(is_capture, pipe);

	FUNC4(&chip->msg_lock);
	FUNC2(&chip->rmh, CMD_0A_GET_PIPE_SPL_COUNT);

	chip->rmh.cmd[0] |= pipe_cmd;
	chip->rmh.stat_len = 2;	/* need all words here! */

	err = FUNC3(chip, &chip->rmh); /* don't sleep! */

	if (err != 0)
		FUNC1(chip->card->dev,
			"could not query pipe's sample count\n");
	else {
		*rsample_count = ((u64)(chip->rmh.stat[0] & MASK_SPL_COUNT_HI)
				  << 24)     /* hi part */
			+ chip->rmh.stat[1]; /* lo part */
	}

	FUNC5(&chip->msg_lock);
	return err;
}