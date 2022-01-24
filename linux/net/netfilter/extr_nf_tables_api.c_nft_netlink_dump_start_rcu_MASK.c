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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_dump_control {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sock *nlsk, struct sk_buff *skb,
				      const struct nlmsghdr *nlh,
				      struct netlink_dump_control *c)
{
	int err;

	if (!FUNC4(THIS_MODULE))
		return -EINVAL;

	FUNC3();
	err = FUNC1(nlsk, skb, nlh, c);
	FUNC2();
	FUNC0(THIS_MODULE);

	return err;
}