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
struct sock {scalar_t__ sk_state; } ;
struct smc_sock {int /*<<< orphan*/  clcsock; scalar_t__ use_fallback; } ;
struct page {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EPIPE ; 
 scalar_t__ SMC_ACTIVE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct page*,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct smc_sock* FUNC3 (struct sock*) ; 
 int FUNC4 (struct socket*,struct page*,int,size_t,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct socket *sock, struct page *page,
			    int offset, size_t size, int flags)
{
	struct sock *sk = sock->sk;
	struct smc_sock *smc;
	int rc = -EPIPE;

	smc = FUNC3(sk);
	FUNC1(sk);
	if (sk->sk_state != SMC_ACTIVE) {
		FUNC2(sk);
		goto out;
	}
	FUNC2(sk);
	if (smc->use_fallback)
		rc = FUNC0(smc->clcsock, page, offset,
				     size, flags);
	else
		rc = FUNC4(sock, page, offset, size, flags);

out:
	return rc;
}