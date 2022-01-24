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
typedef  scalar_t__ u32 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {struct Qdisc* qdisc; } ;
struct net {int dummy; } ;
struct Qdisc_class_ops {int /*<<< orphan*/  tcf_block; } ;
struct Qdisc {TYPE_1__* ops; scalar_t__ handle; } ;
struct TYPE_2__ {struct Qdisc_class_ops* cl_ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int TCM_IFINDEX_MAGIC_BLOCK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct net_device* FUNC2 (struct net*,int) ; 
 struct Qdisc* FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 struct Qdisc* FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct net *net, struct Qdisc **q,
			    u32 *parent, int ifindex, bool rtnl_held,
			    struct netlink_ext_ack *extack)
{
	const struct Qdisc_class_ops *cops;
	struct net_device *dev;
	int err = 0;

	if (ifindex == TCM_IFINDEX_MAGIC_BLOCK)
		return 0;

	FUNC7();

	/* Find link */
	dev = FUNC2(net, ifindex);
	if (!dev) {
		FUNC8();
		return -ENODEV;
	}

	/* Find qdisc */
	if (!*parent) {
		*q = dev->qdisc;
		*parent = (*q)->handle;
	} else {
		*q = FUNC3(dev, FUNC1(*parent));
		if (!*q) {
			FUNC0(extack, "Parent Qdisc doesn't exists");
			err = -EINVAL;
			goto errout_rcu;
		}
	}

	*q = FUNC6(*q);
	if (!*q) {
		FUNC0(extack, "Parent Qdisc doesn't exists");
		err = -EINVAL;
		goto errout_rcu;
	}

	/* Is it classful? */
	cops = (*q)->ops->cl_ops;
	if (!cops) {
		FUNC0(extack, "Qdisc not classful");
		err = -EINVAL;
		goto errout_qdisc;
	}

	if (!cops->tcf_block) {
		FUNC0(extack, "Class doesn't support blocks");
		err = -EOPNOTSUPP;
		goto errout_qdisc;
	}

errout_rcu:
	/* At this point we know that qdisc is not noop_qdisc,
	 * which means that qdisc holds a reference to net_device
	 * and we hold a reference to qdisc, so it is safe to release
	 * rcu read lock.
	 */
	FUNC8();
	return err;

errout_qdisc:
	FUNC8();

	if (rtnl_held)
		FUNC4(*q);
	else
		FUNC5(*q);
	*q = NULL;

	return err;
}