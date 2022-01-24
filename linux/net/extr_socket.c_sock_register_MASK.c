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
struct net_proto_family {size_t family; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOBUFS ; 
 size_t NPROTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * net_families ; 
 int /*<<< orphan*/  net_family_lock ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_proto_family const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(const struct net_proto_family *ops)
{
	int err;

	if (ops->family >= NPROTO) {
		FUNC1("protocol %d >= NPROTO(%d)\n", ops->family, NPROTO);
		return -ENOBUFS;
	}

	FUNC5(&net_family_lock);
	if (FUNC4(net_families[ops->family],
				      FUNC0(&net_family_lock)))
		err = -EEXIST;
	else {
		FUNC3(net_families[ops->family], ops);
		err = 0;
	}
	FUNC6(&net_family_lock);

	FUNC2("NET: Registered protocol family %d\n", ops->family);
	return err;
}