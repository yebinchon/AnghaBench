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

/* Variables and functions */
 int /*<<< orphan*/  internal_dev_link_ops ; 
 int /*<<< orphan*/  ovs_internal_vport_ops ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	int err;

	err = FUNC1(&internal_dev_link_ops);
	if (err < 0)
		return err;

	err = FUNC0(&ovs_internal_vport_ops);
	if (err < 0)
		FUNC2(&internal_dev_link_ops);

	return err;
}