#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct ip_mreqn {int /*<<< orphan*/  imr_ifindex; TYPE_1__ imr_multiaddr; } ;
struct in_ifaddr {TYPE_3__* ifa_dev; int /*<<< orphan*/  ifa_address; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct sock*,struct ip_mreqn*) ; 
 int FUNC2 (struct sock*,struct ip_mreqn*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, bool join, const struct in_ifaddr *ifa)
{
	struct ip_mreqn mreq = {
		.imr_multiaddr.s_addr = ifa->ifa_address,
		.imr_ifindex = ifa->ifa_dev->dev->ifindex,
	};
	int ret;

	FUNC0();

	FUNC3(sk);
	if (join)
		ret = FUNC1(sk, &mreq);
	else
		ret = FUNC2(sk, &mreq);
	FUNC4(sk);

	return ret;
}