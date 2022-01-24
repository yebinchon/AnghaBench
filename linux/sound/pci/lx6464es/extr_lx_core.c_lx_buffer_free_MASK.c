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
typedef  int u32 ;
struct TYPE_3__ {int* cmd; int* stat; } ;
struct lx6464es {int /*<<< orphan*/  msg_lock; TYPE_1__ rmh; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_11_CANCEL_BUFFER ; 
 int MASK_BUFFER_ID ; 
 int MASK_DATA_SIZE ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lx6464es*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct lx6464es *chip, u32 pipe, int is_capture,
		   u32 *r_buffer_size)
{
	int err;
	u32 pipe_cmd = FUNC0(is_capture, pipe);

	FUNC3(&chip->msg_lock);
	FUNC1(&chip->rmh, CMD_11_CANCEL_BUFFER);

	chip->rmh.cmd[0] |= pipe_cmd;
	chip->rmh.cmd[0] |= MASK_BUFFER_ID; /* ask for the current buffer: the
					     * microblaze will seek for it */

	err = FUNC2(chip, &chip->rmh);

	if (err == 0)
		*r_buffer_size = chip->rmh.stat[0]  & MASK_DATA_SIZE;

	FUNC4(&chip->msg_lock);
	return err;
}