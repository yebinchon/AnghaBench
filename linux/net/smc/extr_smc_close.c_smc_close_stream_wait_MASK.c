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
struct sock {scalar_t__ sk_err; } ;
struct smc_sock {int wait_close_tx_prepared; int /*<<< orphan*/  conn; struct sock sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ECONNABORTED ; 
 scalar_t__ ECONNRESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (struct sock*,long*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static void FUNC7(struct smc_sock *smc, long timeout)
{
	FUNC0(wait, woken_wake_function);
	struct sock *sk = &smc->sk;

	if (!timeout)
		return;

	if (!FUNC6(&smc->conn))
		return;

	smc->wait_close_tx_prepared = 1;
	FUNC1(FUNC4(sk), &wait);
	while (!FUNC3(current) && timeout) {
		int rc;

		rc = FUNC5(sk, &timeout,
				   !FUNC6(&smc->conn) ||
				   (sk->sk_err == ECONNABORTED) ||
				   (sk->sk_err == ECONNRESET),
				   &wait);
		if (rc)
			break;
	}
	FUNC2(FUNC4(sk), &wait);
	smc->wait_close_tx_prepared = 0;
}