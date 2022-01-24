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
struct sock {int dummy; } ;
struct raw_sock {int count; int /*<<< orphan*/  uniq; scalar_t__ bound; scalar_t__ ifindex; int /*<<< orphan*/  filter; int /*<<< orphan*/  notifier; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct net_device*,struct sock*) ; 
 struct raw_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct raw_sock *ro;

	if (!sk)
		return 0;

	ro = FUNC7(sk);

	FUNC12(&ro->notifier);

	FUNC5(sk);

	/* remove current filters & unregister */
	if (ro->bound) {
		if (ro->ifindex) {
			struct net_device *dev;

			dev = FUNC0(FUNC9(sk), ro->ifindex);
			if (dev) {
				FUNC6(FUNC1(dev), dev, sk);
				FUNC2(dev);
			}
		} else {
			FUNC6(FUNC9(sk), NULL, sk);
		}
	}

	if (ro->count > 1)
		FUNC4(ro->filter);

	ro->ifindex = 0;
	ro->bound   = 0;
	ro->count   = 0;
	FUNC3(ro->uniq);

	FUNC10(sk);
	sock->sk = NULL;

	FUNC8(sk);
	FUNC11(sk);

	return 0;
}