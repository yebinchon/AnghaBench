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
struct socket {scalar_t__ type; int /*<<< orphan*/ * ops; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {void* sk_rcvbuf; void* sk_sndbuf; } ;
struct smc_sock {int use_fallback; TYPE_3__* clcsock; TYPE_1__ sk; scalar_t__ fallback_rsn; } ;
struct net {int dummy; } ;
struct TYPE_6__ {TYPE_2__* sk; } ;
struct TYPE_5__ {int /*<<< orphan*/  sk_rcvbuf; int /*<<< orphan*/  sk_sndbuf; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int EPROTONOSUPPORT ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int PF_INET ; 
 int PF_INET6 ; 
 int SMCPROTO_SMC ; 
 int SMCPROTO_SMC6 ; 
 int /*<<< orphan*/  SMC_BUF_MIN_SIZE ; 
 scalar_t__ SOCK_STREAM ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct smc_sock* FUNC2 (struct sock*) ; 
 struct sock* FUNC3 (struct net*,struct socket*,int) ; 
 int /*<<< orphan*/  smc_sock_ops ; 
 int FUNC4 (struct net*,int,scalar_t__,int /*<<< orphan*/ ,TYPE_3__**) ; 

__attribute__((used)) static int FUNC5(struct net *net, struct socket *sock, int protocol,
		      int kern)
{
	int family = (protocol == SMCPROTO_SMC6) ? PF_INET6 : PF_INET;
	struct smc_sock *smc;
	struct sock *sk;
	int rc;

	rc = -ESOCKTNOSUPPORT;
	if (sock->type != SOCK_STREAM)
		goto out;

	rc = -EPROTONOSUPPORT;
	if (protocol != SMCPROTO_SMC && protocol != SMCPROTO_SMC6)
		goto out;

	rc = -ENOBUFS;
	sock->ops = &smc_sock_ops;
	sk = FUNC3(net, sock, protocol);
	if (!sk)
		goto out;

	/* create internal TCP socket for CLC handshake and fallback */
	smc = FUNC2(sk);
	smc->use_fallback = false; /* assume rdma capability first */
	smc->fallback_rsn = 0;
	rc = FUNC4(net, family, SOCK_STREAM, IPPROTO_TCP,
			      &smc->clcsock);
	if (rc) {
		FUNC1(sk);
		goto out;
	}
	smc->sk.sk_sndbuf = FUNC0(smc->clcsock->sk->sk_sndbuf, SMC_BUF_MIN_SIZE);
	smc->sk.sk_rcvbuf = FUNC0(smc->clcsock->sk->sk_rcvbuf, SMC_BUF_MIN_SIZE);

out:
	return rc;
}