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
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_l2tpip {TYPE_1__ l2tp_addr; int /*<<< orphan*/  l2tp_conn_id; int /*<<< orphan*/  l2tp_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct l2tp_ip_sock {int /*<<< orphan*/  conn_id; int /*<<< orphan*/  peer_conn_id; } ;
struct inet_sock {scalar_t__ inet_saddr; scalar_t__ inet_rcv_saddr; scalar_t__ inet_daddr; int /*<<< orphan*/  inet_dport; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int ENOTCONN ; 
 struct inet_sock* FUNC0 (struct sock*) ; 
 struct l2tp_ip_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_l2tpip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct socket *sock, struct sockaddr *uaddr,
			   int peer)
{
	struct sock *sk		= sock->sk;
	struct inet_sock *inet	= FUNC0(sk);
	struct l2tp_ip_sock *lsk = FUNC1(sk);
	struct sockaddr_l2tpip *lsa = (struct sockaddr_l2tpip *)uaddr;

	FUNC2(lsa, 0, sizeof(*lsa));
	lsa->l2tp_family = AF_INET;
	if (peer) {
		if (!inet->inet_dport)
			return -ENOTCONN;
		lsa->l2tp_conn_id = lsk->peer_conn_id;
		lsa->l2tp_addr.s_addr = inet->inet_daddr;
	} else {
		__be32 addr = inet->inet_rcv_saddr;
		if (!addr)
			addr = inet->inet_saddr;
		lsa->l2tp_conn_id = lsk->conn_id;
		lsa->l2tp_addr.s_addr = addr;
	}
	return sizeof(*lsa);
}