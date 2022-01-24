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
struct tcp_congestion_ops {int /*<<< orphan*/  flags; int /*<<< orphan*/  owner; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcp_congestion_control; } ;
struct net {TYPE_1__ ipv4; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int /*<<< orphan*/  TCP_CONG_NON_RESTRICTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct tcp_congestion_ops* FUNC3 (struct net*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct tcp_congestion_ops* FUNC5 (int /*<<< orphan*/ *,struct tcp_congestion_ops*) ; 

int FUNC6(struct net *net, const char *name)
{
	struct tcp_congestion_ops *ca;
	const struct tcp_congestion_ops *prev;
	int ret;

	FUNC1();
	ca = FUNC3(net, name);
	if (!ca) {
		ret = -ENOENT;
	} else if (!FUNC4(ca->owner)) {
		ret = -EBUSY;
	} else {
		prev = FUNC5(&net->ipv4.tcp_congestion_control, ca);
		if (prev)
			FUNC0(prev->owner);

		ca->flags |= TCP_CONG_NON_RESTRICTED;
		ret = 0;
	}
	FUNC2();

	return ret;
}