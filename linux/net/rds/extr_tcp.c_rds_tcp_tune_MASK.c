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
struct sock {scalar_t__ sk_sndbuf; int /*<<< orphan*/  sk_userlocks; } ;
struct rds_tcp_net {scalar_t__ sndbuf_size; scalar_t__ rcvbuf_size; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_RCVBUF_LOCK ; 
 int /*<<< orphan*/  SOCK_SNDBUF_LOCK ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct rds_tcp_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_tcp_netid ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct net* FUNC4 (struct sock*) ; 

void FUNC5(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct net *net = FUNC4(sk);
	struct rds_tcp_net *rtn = FUNC1(net, rds_tcp_netid);

	FUNC2(sock);
	FUNC0(sk);
	if (rtn->sndbuf_size > 0) {
		sk->sk_sndbuf = rtn->sndbuf_size;
		sk->sk_userlocks |= SOCK_SNDBUF_LOCK;
	}
	if (rtn->rcvbuf_size > 0) {
		sk->sk_sndbuf = rtn->rcvbuf_size;
		sk->sk_userlocks |= SOCK_RCVBUF_LOCK;
	}
	FUNC3(sk);
}