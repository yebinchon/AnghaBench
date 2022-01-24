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
struct TYPE_5__ {int* cmd; } ;
struct lx6464es {TYPE_1__* card; int /*<<< orphan*/  msg_lock; TYPE_2__ rmh; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_06_ALLOCATE_PIPE ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lx6464es*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct lx6464es *chip, u32 pipe, int is_capture,
		     int channels)
{
	int err;
	u32 pipe_cmd = FUNC0(is_capture, pipe);

	FUNC4(&chip->msg_lock);
	FUNC2(&chip->rmh, CMD_06_ALLOCATE_PIPE);

	chip->rmh.cmd[0] |= pipe_cmd;
	chip->rmh.cmd[0] |= channels;

	err = FUNC3(chip, &chip->rmh);
	FUNC5(&chip->msg_lock);

	if (err != 0)
		FUNC1(chip->card->dev, "could not allocate pipe\n");

	return err;
}