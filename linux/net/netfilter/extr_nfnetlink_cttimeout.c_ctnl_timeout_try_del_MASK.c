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
struct net {int dummy; } ;
struct ctnl_timeout {int /*<<< orphan*/  timeout; int /*<<< orphan*/  head; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct ctnl_timeout*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_head ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net *net, struct ctnl_timeout *timeout)
{
	int ret = 0;

	/* We want to avoid races with ctnl_timeout_put. So only when the
	 * current refcnt is 1, we decrease it to 0.
	 */
	if (FUNC3(&timeout->refcnt)) {
		/* We are protected by nfnl mutex. */
		FUNC1(&timeout->head);
		FUNC2(net, &timeout->timeout);
		FUNC0(timeout, rcu_head);
	} else {
		ret = -EBUSY;
	}
	return ret;
}