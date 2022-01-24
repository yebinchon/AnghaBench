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
struct net_device {scalar_t__ addr_len; int /*<<< orphan*/  mc; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

int FUNC4(struct net_device *to, struct net_device *from)
{
	int err = 0;

	if (to->addr_len != from->addr_len)
		return -EINVAL;

	FUNC2(to);
	err = FUNC1(&to->mc, &from->mc, to->addr_len);
	if (!err)
		FUNC0(to);
	FUNC3(to);
	return err;
}