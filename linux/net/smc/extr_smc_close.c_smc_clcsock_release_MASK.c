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
struct socket {int dummy; } ;
struct smc_sock {int /*<<< orphan*/  clcsock_release_lock; struct socket* clcsock; int /*<<< orphan*/  smc_listen_work; scalar_t__ listen_smc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 

void FUNC5(struct smc_sock *smc)
{
	struct socket *tcp;

	if (smc->listen_smc && FUNC1() != &smc->smc_listen_work)
		FUNC0(&smc->smc_listen_work);
	FUNC2(&smc->clcsock_release_lock);
	if (smc->clcsock) {
		tcp = smc->clcsock;
		smc->clcsock = NULL;
		FUNC4(tcp);
	}
	FUNC3(&smc->clcsock_release_lock);
}