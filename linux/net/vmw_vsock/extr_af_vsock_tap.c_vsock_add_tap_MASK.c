#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vsock_tap {int /*<<< orphan*/  list; int /*<<< orphan*/  module; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_VSOCKMON ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  vsock_tap_all ; 
 int /*<<< orphan*/  vsock_tap_lock ; 

int FUNC5(struct vsock_tap *vt)
{
	if (FUNC4(vt->dev->type != ARPHRD_VSOCKMON))
		return -EINVAL;

	FUNC0(vt->module);

	FUNC2(&vsock_tap_lock);
	FUNC1(&vt->list, &vsock_tap_all);
	FUNC3(&vsock_tap_lock);

	return 0;
}