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
struct tcp_congestion_ops {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 struct tcp_congestion_ops* FUNC4 (char const*) ; 

__attribute__((used)) static struct tcp_congestion_ops *FUNC5(struct net *net,
						       const char *name)
{
	struct tcp_congestion_ops *ca = FUNC4(name);

#ifdef CONFIG_MODULES
	if (!ca && capable(CAP_NET_ADMIN)) {
		rcu_read_unlock();
		request_module("tcp_%s", name);
		rcu_read_lock();
		ca = tcp_ca_find(name);
	}
#endif
	return ca;
}