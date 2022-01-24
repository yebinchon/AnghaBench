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
struct socket {struct sock* sk; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct sock {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PACKET ; 
 int EOPNOTSUPP ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct socket *sock, struct sockaddr *uaddr,
			       int peer)
{
	struct net_device *dev;
	struct sock *sk	= sock->sk;

	if (peer)
		return -EOPNOTSUPP;

	uaddr->sa_family = AF_PACKET;
	FUNC1(uaddr->sa_data, 0, sizeof(uaddr->sa_data));
	FUNC3();
	dev = FUNC0(FUNC5(sk), FUNC2(sk)->ifindex);
	if (dev)
		FUNC6(uaddr->sa_data, dev->name, sizeof(uaddr->sa_data));
	FUNC4();

	return sizeof(*uaddr);
}