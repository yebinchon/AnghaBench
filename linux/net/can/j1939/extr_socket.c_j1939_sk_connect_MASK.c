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
struct socket {int /*<<< orphan*/  sk; } ;
struct TYPE_5__ {int /*<<< orphan*/  pgn; int /*<<< orphan*/  addr; scalar_t__ name; } ;
struct TYPE_6__ {TYPE_2__ j1939; } ;
struct sockaddr_can {scalar_t__ can_ifindex; TYPE_3__ can_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pgn; int /*<<< orphan*/  da; scalar_t__ dst_name; } ;
struct j1939_sock {int state; scalar_t__ ifindex; TYPE_1__ addr; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  J1939_NO_ADDR ; 
 int J1939_SOCK_BOUND ; 
 int J1939_SOCK_CONNECTED ; 
 int /*<<< orphan*/  SOCK_BROADCAST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct j1939_sock* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sockaddr_can*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, struct sockaddr *uaddr,
			    int len, int flags)
{
	struct sockaddr_can *addr = (struct sockaddr_can *)uaddr;
	struct j1939_sock *jsk = FUNC1(sock->sk);
	int ret = 0;

	ret = FUNC2(addr, len);
	if (ret)
		return ret;

	FUNC3(sock->sk);

	/* bind() before connect() is mandatory */
	if (!(jsk->state & J1939_SOCK_BOUND)) {
		ret = -EINVAL;
		goto out_release_sock;
	}

	/* A connect() to a different interface is not supported. */
	if (jsk->ifindex != addr->can_ifindex) {
		ret = -EINVAL;
		goto out_release_sock;
	}

	if (!addr->can_addr.j1939.name &&
	    addr->can_addr.j1939.addr == J1939_NO_ADDR &&
	    !FUNC5(&jsk->sk, SOCK_BROADCAST)) {
		/* broadcast, but SO_BROADCAST not set */
		ret = -EACCES;
		goto out_release_sock;
	}

	jsk->addr.dst_name = addr->can_addr.j1939.name;
	jsk->addr.da = addr->can_addr.j1939.addr;

	if (FUNC0(addr->can_addr.j1939.pgn))
		jsk->addr.pgn = addr->can_addr.j1939.pgn;

	jsk->state |= J1939_SOCK_CONNECTED;

 out_release_sock: /* fall through */
	FUNC4(sock->sk);

	return ret;
}