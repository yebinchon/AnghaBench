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
 scalar_t__ CMP_OUTPUT ; 
 int /*<<< orphan*/  SUCCEED_ON_BUS_RESET ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipcr_set_modify ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opcr_set_modify ; 
 int FUNC3 (struct cmp_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcr_set_check ; 

int FUNC4(struct cmp_connection *c)
{
	int err;

	FUNC1(&c->mutex);

	if (!c->connected) {
		FUNC2(&c->mutex);
		return 0;
	}

	err = FUNC0(&c->resources);
	if (err < 0)
		goto err_unconnect;

	if (c->direction == CMP_OUTPUT)
		err = FUNC3(c, opcr_set_modify, pcr_set_check,
				 SUCCEED_ON_BUS_RESET);
	else
		err = FUNC3(c, ipcr_set_modify, pcr_set_check,
				 SUCCEED_ON_BUS_RESET);

	if (err < 0)
		goto err_unconnect;

	FUNC2(&c->mutex);

	return 0;

err_unconnect:
	c->connected = false;
	FUNC2(&c->mutex);

	return err;
}