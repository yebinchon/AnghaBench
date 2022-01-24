#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int* stat; int /*<<< orphan*/ * cmd; } ;
struct lx6464es {int /*<<< orphan*/  msg_lock; TYPE_1__ rmh; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_0E_GET_STREAM_SPL_COUNT ; 
 int MASK_SPL_COUNT_HI ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lx6464es*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct lx6464es *chip, u32 pipe, int is_capture,
			      u64 *r_bytepos)
{
	int err;
	u32 pipe_cmd = FUNC0(is_capture, pipe);

	FUNC3(&chip->msg_lock);
	FUNC1(&chip->rmh, CMD_0E_GET_STREAM_SPL_COUNT);

	chip->rmh.cmd[0] |= pipe_cmd;

	err = FUNC2(chip, &chip->rmh);

	*r_bytepos = ((u64) (chip->rmh.stat[0] & MASK_SPL_COUNT_HI)
		      << 32)	     /* hi part */
		+ chip->rmh.stat[1]; /* lo part */

	FUNC4(&chip->msg_lock);
	return err;
}