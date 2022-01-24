#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* xpt_server; } ;
struct svc_sock {struct socket* sk_sock; TYPE_2__ sk_xprt; } ;
struct socket {TYPE_3__* sk; } ;
struct TYPE_8__ {unsigned int sk_sndbuf; unsigned int sk_rcvbuf; int /*<<< orphan*/  (* sk_write_space ) (TYPE_3__*) ;} ;
struct TYPE_6__ {unsigned int sv_max_mesg; } ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 unsigned int FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(struct svc_sock *svsk, unsigned int nreqs)
{
	unsigned int max_mesg = svsk->sk_xprt.xpt_server->sv_max_mesg;
	struct socket *sock = svsk->sk_sock;

	nreqs = FUNC1(nreqs, INT_MAX / 2 / max_mesg);

	FUNC0(sock->sk);
	sock->sk->sk_sndbuf = nreqs * max_mesg * 2;
	sock->sk->sk_rcvbuf = nreqs * max_mesg * 2;
	sock->sk->sk_write_space(sock->sk);
	FUNC2(sock->sk);
}