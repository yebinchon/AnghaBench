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
struct sockaddr_can {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct j1939_sock {int state; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int J1939_MIN_NAMELEN ; 
 int J1939_SOCK_CONNECTED ; 
 struct j1939_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_can*,struct j1939_sock*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, struct sockaddr *uaddr,
			    int peer)
{
	struct sockaddr_can *addr = (struct sockaddr_can *)uaddr;
	struct sock *sk = sock->sk;
	struct j1939_sock *jsk = FUNC0(sk);
	int ret = 0;

	FUNC2(sk);

	if (peer && !(jsk->state & J1939_SOCK_CONNECTED)) {
		ret = -EADDRNOTAVAIL;
		goto failure;
	}

	FUNC1(addr, jsk, peer);
	ret = J1939_MIN_NAMELEN;

 failure:
	FUNC3(sk);

	return ret;
}