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
struct can_proto {int protocol; int /*<<< orphan*/  prot; } ;

/* Variables and functions */
 int CAN_NPROTO ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct can_proto const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * proto_tab ; 
 int /*<<< orphan*/  proto_tab_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(const struct can_proto *cp)
{
	int proto = cp->protocol;
	int err = 0;

	if (proto < 0 || proto >= CAN_NPROTO) {
		FUNC3("can: protocol number %d out of range\n", proto);
		return -EINVAL;
	}

	err = FUNC4(cp->prot, 0);
	if (err < 0)
		return err;

	FUNC1(&proto_tab_lock);

	if (FUNC6(proto_tab[proto])) {
		FUNC3("can: protocol %d already registered\n", proto);
		err = -EBUSY;
	} else {
		FUNC0(proto_tab[proto], cp);
	}

	FUNC2(&proto_tab_lock);

	if (err < 0)
		FUNC5(cp->prot);

	return err;
}