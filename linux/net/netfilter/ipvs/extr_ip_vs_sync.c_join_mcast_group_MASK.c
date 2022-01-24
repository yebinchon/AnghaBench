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
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct net_device {scalar_t__ ifindex; } ;
struct ip_mreqn {scalar_t__ imr_ifindex; int /*<<< orphan*/  imr_multiaddr; } ;
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  mreq ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct sock*,struct ip_mreqn*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_mreqn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static int
FUNC5(struct sock *sk, struct in_addr *addr, struct net_device *dev)
{
	struct ip_mreqn mreq;
	int ret;

	FUNC3(&mreq, 0, sizeof(mreq));
	FUNC2(&mreq.imr_multiaddr, addr, sizeof(struct in_addr));

	if (sk->sk_bound_dev_if && dev->ifindex != sk->sk_bound_dev_if)
		return -EINVAL;

	mreq.imr_ifindex = dev->ifindex;

	FUNC1(sk);
	ret = FUNC0(sk, &mreq);
	FUNC4(sk);

	return ret;
}