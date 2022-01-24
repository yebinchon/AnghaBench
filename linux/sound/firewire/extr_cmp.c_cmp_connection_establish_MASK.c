#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cmp_connection {int connected; scalar_t__ direction; int /*<<< orphan*/  mutex; int /*<<< orphan*/  resources; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_ON_BUS_RESET ; 
 scalar_t__ CMP_OUTPUT ; 
 int EAGAIN ; 
 int EISCONN ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipcr_set_modify ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opcr_set_modify ; 
 int FUNC4 (struct cmp_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcr_set_check ; 

int FUNC5(struct cmp_connection *c)
{
	int err;

	FUNC2(&c->mutex);

	if (FUNC0(c->connected)) {
		FUNC3(&c->mutex);
		return -EISCONN;
	}

retry_after_bus_reset:
	if (c->direction == CMP_OUTPUT)
		err = FUNC4(c, opcr_set_modify, pcr_set_check,
				 ABORT_ON_BUS_RESET);
	else
		err = FUNC4(c, ipcr_set_modify, pcr_set_check,
				 ABORT_ON_BUS_RESET);

	if (err == -EAGAIN) {
		err = FUNC1(&c->resources);
		if (err >= 0)
			goto retry_after_bus_reset;
	}
	if (err >= 0)
		c->connected = true;

	FUNC3(&c->mutex);

	return err;
}