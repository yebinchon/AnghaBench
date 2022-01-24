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
struct TYPE_4__ {int /*<<< orphan*/  unit; int /*<<< orphan*/  allocated; } ;
struct cmp_connection {int /*<<< orphan*/  mutex; int /*<<< orphan*/  speed; TYPE_2__ resources; int /*<<< orphan*/  max_speed; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_speed; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct cmp_connection *c,
			   unsigned int max_payload_bytes)
{
	int err;

	FUNC4(&c->mutex);

	if (FUNC0(c->resources.allocated)) {
		err = -EBUSY;
		goto end;
	}

	c->speed = FUNC3(c->max_speed,
		       FUNC2(c->resources.unit)->max_speed);

	err = FUNC1(&c->resources, max_payload_bytes,
					c->speed);
end:
	FUNC5(&c->mutex);

	return err;
}