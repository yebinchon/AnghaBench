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
struct sock {scalar_t__ sk_state; } ;
struct smc_sock {TYPE_2__* clcsock; scalar_t__ use_fallback; int /*<<< orphan*/  fallback_rsn; int /*<<< orphan*/  connect_nonblock; } ;
struct msghdr {int msg_flags; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* sendmsg ) (TYPE_2__*,struct msghdr*,size_t) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EPIPE ; 
 int MSG_FASTOPEN ; 
 scalar_t__ SMC_ACTIVE ; 
 scalar_t__ SMC_APPCLOSEWAIT1 ; 
 int /*<<< orphan*/  SMC_CLC_DECL_OPTUNSUPP ; 
 scalar_t__ SMC_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct smc_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_sock*) ; 
 int FUNC4 (struct smc_sock*,struct msghdr*,size_t) ; 
 int FUNC5 (TYPE_2__*,struct msghdr*,size_t) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, struct msghdr *msg, size_t len)
{
	struct sock *sk = sock->sk;
	struct smc_sock *smc;
	int rc = -EPIPE;

	smc = FUNC2(sk);
	FUNC0(sk);
	if ((sk->sk_state != SMC_ACTIVE) &&
	    (sk->sk_state != SMC_APPCLOSEWAIT1) &&
	    (sk->sk_state != SMC_INIT))
		goto out;

	if (msg->msg_flags & MSG_FASTOPEN) {
		if (sk->sk_state == SMC_INIT && !smc->connect_nonblock) {
			FUNC3(smc);
			smc->fallback_rsn = SMC_CLC_DECL_OPTUNSUPP;
		} else {
			rc = -EINVAL;
			goto out;
		}
	}

	if (smc->use_fallback)
		rc = smc->clcsock->ops->sendmsg(smc->clcsock, msg, len);
	else
		rc = FUNC4(smc, msg, len);
out:
	FUNC1(sk);
	return rc;
}