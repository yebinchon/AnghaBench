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
struct cmp_connection {int connected; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUCCEED_ON_BUS_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct cmp_connection*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcr_break_modify ; 
 int FUNC3 (struct cmp_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(struct cmp_connection *c)
{
	int err;

	FUNC1(&c->mutex);

	if (!c->connected) {
		FUNC2(&c->mutex);
		return;
	}

	err = FUNC3(c, pcr_break_modify, NULL, SUCCEED_ON_BUS_RESET);
	if (err < 0)
		FUNC0(c, "plug is still connected\n");

	c->connected = false;

	FUNC2(&c->mutex);
}