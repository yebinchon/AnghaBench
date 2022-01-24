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
struct socket {struct sock* sk; } ;
struct sockaddr_can {scalar_t__ can_family; int can_ifindex; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_err; } ;
struct raw_sock {int bound; int ifindex; } ;
struct net_device {scalar_t__ type; int flags; int ifindex; } ;

/* Variables and functions */
 scalar_t__ AF_CAN ; 
 scalar_t__ ARPHRD_CAN ; 
 int FUNC0 (struct sockaddr_can,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENETDOWN ; 
 int ENODEV ; 
 int IFF_UP ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  can_ifindex ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_device*,struct sock*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct net_device*,struct sock*) ; 
 struct raw_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

__attribute__((used)) static int FUNC12(struct socket *sock, struct sockaddr *uaddr, int len)
{
	struct sockaddr_can *addr = (struct sockaddr_can *)uaddr;
	struct sock *sk = sock->sk;
	struct raw_sock *ro = FUNC7(sk);
	int ifindex;
	int err = 0;
	int notify_enetdown = 0;

	if (len < FUNC0(*addr, can_ifindex))
		return -EINVAL;
	if (addr->can_family != AF_CAN)
		return -EINVAL;

	FUNC4(sk);

	if (ro->bound && addr->can_ifindex == ro->ifindex)
		goto out;

	if (addr->can_ifindex) {
		struct net_device *dev;

		dev = FUNC1(FUNC10(sk), addr->can_ifindex);
		if (!dev) {
			err = -ENODEV;
			goto out;
		}
		if (dev->type != ARPHRD_CAN) {
			FUNC3(dev);
			err = -ENODEV;
			goto out;
		}
		if (!(dev->flags & IFF_UP))
			notify_enetdown = 1;

		ifindex = dev->ifindex;

		/* filters set by default/setsockopt */
		err = FUNC6(FUNC10(sk), dev, sk);
		FUNC3(dev);
	} else {
		ifindex = 0;

		/* filters set by default/setsockopt */
		err = FUNC6(FUNC10(sk), NULL, sk);
	}

	if (!err) {
		if (ro->bound) {
			/* unregister old filters */
			if (ro->ifindex) {
				struct net_device *dev;

				dev = FUNC1(FUNC10(sk),
						       ro->ifindex);
				if (dev) {
					FUNC5(FUNC2(dev),
							       dev, sk);
					FUNC3(dev);
				}
			} else {
				FUNC5(FUNC10(sk), NULL, sk);
			}
		}
		ro->ifindex = ifindex;
		ro->bound = 1;
	}

 out:
	FUNC8(sk);

	if (notify_enetdown) {
		sk->sk_err = ENETDOWN;
		if (!FUNC9(sk, SOCK_DEAD))
			sk->sk_error_report(sk);
	}

	return err;
}