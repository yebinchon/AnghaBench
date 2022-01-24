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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/ * cmd; } ;
struct lx6464es {int /*<<< orphan*/  msg_lock; TYPE_1__ rmh; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_02_SET_GRANULARITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lx6464es*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct lx6464es *chip, u32 gran)
{
	int ret;

	FUNC2(&chip->msg_lock);

	FUNC0(&chip->rmh, CMD_02_SET_GRANULARITY);
	chip->rmh.cmd[0] |= gran;

	ret = FUNC1(chip, &chip->rmh);
	FUNC3(&chip->msg_lock);
	return ret;
}