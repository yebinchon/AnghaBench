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
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {int sk_state; } ;
struct smc_sock {int connect_nonblock; int /*<<< orphan*/  connect_work; int /*<<< orphan*/  sk; TYPE_2__* clcsock; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk; } ;
struct TYPE_3__ {int syn_smc; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int EALREADY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int EISCONN ; 
 int O_NONBLOCK ; 
#define  SMC_ACTIVE 129 
#define  SMC_INIT 128 
 int FUNC0 (struct smc_sock*) ; 
 int FUNC1 (TYPE_2__*,struct sockaddr*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_sock*) ; 
 struct smc_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct socket *sock, struct sockaddr *addr,
		       int alen, int flags)
{
	struct sock *sk = sock->sk;
	struct smc_sock *smc;
	int rc = -EINVAL;

	smc = FUNC6(sk);

	/* separate smc parameter checking to be safe */
	if (alen < sizeof(addr->sa_family))
		goto out_err;
	if (addr->sa_family != AF_INET && addr->sa_family != AF_INET6)
		goto out_err;

	FUNC2(sk);
	switch (sk->sk_state) {
	default:
		goto out;
	case SMC_ACTIVE:
		rc = -EISCONN;
		goto out;
	case SMC_INIT:
		rc = 0;
		break;
	}

	FUNC5(smc);
	FUNC8(smc->clcsock->sk)->syn_smc = 1;
	if (smc->connect_nonblock) {
		rc = -EALREADY;
		goto out;
	}
	rc = FUNC1(smc->clcsock, addr, alen, flags);
	if (rc && rc != -EINPROGRESS)
		goto out;

	FUNC7(&smc->sk); /* sock put in passive closing */
	if (flags & O_NONBLOCK) {
		if (FUNC4(&smc->connect_work))
			smc->connect_nonblock = 1;
		rc = -EINPROGRESS;
	} else {
		rc = FUNC0(smc);
		if (rc < 0)
			goto out;
		else
			rc = 0; /* success cases including fallback */
	}

out:
	FUNC3(sk);
out_err:
	return rc;
}