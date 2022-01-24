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
struct sockaddr_ieee802154 {scalar_t__ family; int /*<<< orphan*/  addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_bound_dev_if; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct ieee802154_addr {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_IEEE802154 ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee802154_addr*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,struct ieee802154_addr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct sockaddr *_uaddr, int len)
{
	struct ieee802154_addr addr;
	struct sockaddr_ieee802154 *uaddr = (struct sockaddr_ieee802154 *)_uaddr;
	int err = 0;
	struct net_device *dev = NULL;

	if (len < sizeof(*uaddr))
		return -EINVAL;

	uaddr = (struct sockaddr_ieee802154 *)_uaddr;
	if (uaddr->family != AF_IEEE802154)
		return -EINVAL;

	FUNC3(sk);

	FUNC1(&addr, &uaddr->addr);
	dev = FUNC2(FUNC6(sk), &addr);
	if (!dev) {
		err = -ENODEV;
		goto out;
	}

	sk->sk_bound_dev_if = dev->ifindex;
	FUNC5(sk);

	FUNC0(dev);
out:
	FUNC4(sk);

	return err;
}