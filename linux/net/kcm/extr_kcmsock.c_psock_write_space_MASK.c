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
struct sock {int /*<<< orphan*/  sk_callback_lock; scalar_t__ sk_user_data; } ;
struct kcm_sock {int tx_stopped; int /*<<< orphan*/  tx_work; } ;
struct kcm_psock {struct kcm_sock* tx_kcm; struct kcm_mux* mux; } ;
struct kcm_mux {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  kcm_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct kcm_psock *psock;
	struct kcm_mux *mux;
	struct kcm_sock *kcm;

	FUNC1(&sk->sk_callback_lock);

	psock = (struct kcm_psock *)sk->sk_user_data;
	if (FUNC5(!psock))
		goto out;
	mux = psock->mux;

	FUNC3(&mux->lock);

	/* Check if the socket is reserved so someone is waiting for sending. */
	kcm = psock->tx_kcm;
	if (kcm && !FUNC5(kcm->tx_stopped))
		FUNC0(kcm_wq, &kcm->tx_work);

	FUNC4(&mux->lock);
out:
	FUNC2(&sk->sk_callback_lock);
}