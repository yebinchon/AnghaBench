#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; } ;
struct smc_sock {TYPE_2__* clcsock; scalar_t__ use_fallback; } ;
struct msghdr {scalar_t__ msg_namelen; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* recvmsg ) (TYPE_2__*,struct msghdr*,size_t,int) ;} ;

/* Variables and functions */
 int ENOTCONN ; 
 int RCV_SHUTDOWN ; 
 scalar_t__ SMC_CLOSED ; 
 scalar_t__ SMC_INIT ; 
 scalar_t__ SMC_LISTEN ; 
 scalar_t__ SMC_PEERFINCLOSEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int FUNC2 (struct smc_sock*,struct msghdr*,int /*<<< orphan*/ *,size_t,int) ; 
 struct smc_sock* FUNC3 (struct sock*) ; 
 int FUNC4 (TYPE_2__*,struct msghdr*,size_t,int) ; 

__attribute__((used)) static int FUNC5(struct socket *sock, struct msghdr *msg, size_t len,
		       int flags)
{
	struct sock *sk = sock->sk;
	struct smc_sock *smc;
	int rc = -ENOTCONN;

	smc = FUNC3(sk);
	FUNC0(sk);
	if (sk->sk_state == SMC_CLOSED && (sk->sk_shutdown & RCV_SHUTDOWN)) {
		/* socket was connected before, no more data to read */
		rc = 0;
		goto out;
	}
	if ((sk->sk_state == SMC_INIT) ||
	    (sk->sk_state == SMC_LISTEN) ||
	    (sk->sk_state == SMC_CLOSED))
		goto out;

	if (sk->sk_state == SMC_PEERFINCLOSEWAIT) {
		rc = 0;
		goto out;
	}

	if (smc->use_fallback) {
		rc = smc->clcsock->ops->recvmsg(smc->clcsock, msg, len, flags);
	} else {
		msg->msg_namelen = 0;
		rc = FUNC2(smc, msg, NULL, len, flags);
	}

out:
	FUNC1(sk);
	return rc;
}