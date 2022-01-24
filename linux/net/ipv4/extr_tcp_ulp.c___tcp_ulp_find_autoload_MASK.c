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
struct tcp_ulp_ops {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 struct tcp_ulp_ops* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct tcp_ulp_ops *FUNC6(const char *name)
{
	const struct tcp_ulp_ops *ulp = NULL;

	FUNC1();
	ulp = FUNC4(name);

#ifdef CONFIG_MODULES
	if (!ulp && capable(CAP_NET_ADMIN)) {
		rcu_read_unlock();
		request_module("tcp-ulp-%s", name);
		rcu_read_lock();
		ulp = tcp_ulp_find(name);
	}
#endif
	if (!ulp || !FUNC5(ulp->owner))
		ulp = NULL;

	FUNC2();
	return ulp;
}