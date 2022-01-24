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
typedef  int u32 ;
struct TYPE_5__ {int* cmd; int cmd_len; int* stat; } ;
struct lx6464es {int /*<<< orphan*/  msg_lock; TYPE_1__* card; TYPE_2__ rmh; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BF_64BITS_ADR ; 
 int BF_NOTIFY_EOB ; 
 int /*<<< orphan*/  CMD_0F_UPDATE_BUFFER ; 
 int EB_CMD_REFUSED ; 
 int EB_INVALID_STREAM ; 
 int EB_RBUFFERS_TABLE_OVERFLOW ; 
 int MASK_DATA_SIZE ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lx6464es*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct lx6464es *chip, u32 pipe, int is_capture,
		   u32 buffer_size, u32 buf_address_lo, u32 buf_address_hi,
		   u32 *r_buffer_index)
{
	int err;
	u32 pipe_cmd = FUNC0(is_capture, pipe);

	FUNC4(&chip->msg_lock);
	FUNC2(&chip->rmh, CMD_0F_UPDATE_BUFFER);

	chip->rmh.cmd[0] |= pipe_cmd;
	chip->rmh.cmd[0] |= BF_NOTIFY_EOB; /* request interrupt notification */

	/* todo: pause request, circular buffer */

	chip->rmh.cmd[1] = buffer_size & MASK_DATA_SIZE;
	chip->rmh.cmd[2] = buf_address_lo;

	if (buf_address_hi) {
		chip->rmh.cmd_len = 4;
		chip->rmh.cmd[3] = buf_address_hi;
		chip->rmh.cmd[0] |= BF_64BITS_ADR;
	}

	err = FUNC3(chip, &chip->rmh);

	if (err == 0) {
		*r_buffer_index = chip->rmh.stat[0];
		goto done;
	}

	if (err == EB_RBUFFERS_TABLE_OVERFLOW)
		FUNC1(chip->card->dev,
			"lx_buffer_give EB_RBUFFERS_TABLE_OVERFLOW\n");

	if (err == EB_INVALID_STREAM)
		FUNC1(chip->card->dev,
			"lx_buffer_give EB_INVALID_STREAM\n");

	if (err == EB_CMD_REFUSED)
		FUNC1(chip->card->dev,
			"lx_buffer_give EB_CMD_REFUSED\n");

 done:
	FUNC5(&chip->msg_lock);
	return err;
}