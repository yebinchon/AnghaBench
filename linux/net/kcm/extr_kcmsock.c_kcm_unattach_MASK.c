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
struct sock {TYPE_3__* sk_socket; int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_state_change; int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_data_ready; int /*<<< orphan*/ * sk_user_data; } ;
struct kcm_psock {int done; int /*<<< orphan*/  psock_list; int /*<<< orphan*/  psock_avail_list; int /*<<< orphan*/  tx_stopped; TYPE_2__* tx_kcm; int /*<<< orphan*/  strp; int /*<<< orphan*/  stats; int /*<<< orphan*/  bpf_prog; int /*<<< orphan*/ * ready_rx_msg; int /*<<< orphan*/  psock_ready_list; int /*<<< orphan*/  rx_kcm; int /*<<< orphan*/  save_state_change; int /*<<< orphan*/  save_write_space; int /*<<< orphan*/  save_data_ready; struct kcm_mux* mux; struct sock* sk; } ;
struct TYPE_4__ {int /*<<< orphan*/  psock_unattach_rsvd; int /*<<< orphan*/  psock_unattach; int /*<<< orphan*/  rx_ready_drops; } ;
struct kcm_mux {int /*<<< orphan*/  lock; int /*<<< orphan*/  psocks_cnt; TYPE_1__ stats; int /*<<< orphan*/  aggregate_strp_stats; int /*<<< orphan*/  aggregate_psock_stats; int /*<<< orphan*/  rx_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  file; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kcm_psock*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  kcm_psockp ; 
 int /*<<< orphan*/  kcm_wq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct kcm_psock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC21(struct kcm_psock *psock)
{
	struct sock *csk = psock->sk;
	struct kcm_mux *mux = psock->mux;

	FUNC9(csk);

	/* Stop getting callbacks from TCP socket. After this there should
	 * be no way to reserve a kcm for this psock.
	 */
	FUNC19(&csk->sk_callback_lock);
	csk->sk_user_data = NULL;
	csk->sk_data_ready = psock->save_data_ready;
	csk->sk_write_space = psock->save_write_space;
	csk->sk_state_change = psock->save_state_change;
	FUNC18(&psock->strp);

	if (FUNC1(psock->rx_kcm)) {
		FUNC20(&csk->sk_callback_lock);
		FUNC11(csk);
		return;
	}

	FUNC15(&mux->rx_lock);

	/* Stop receiver activities. After this point psock should not be
	 * able to get onto ready list either through callbacks or work.
	 */
	if (psock->ready_rx_msg) {
		FUNC8(&psock->psock_ready_list);
		FUNC6(psock->ready_rx_msg);
		psock->ready_rx_msg = NULL;
		FUNC0(mux->stats.rx_ready_drops);
	}

	FUNC16(&mux->rx_lock);

	FUNC20(&csk->sk_callback_lock);

	/* Call strp_done without sock lock */
	FUNC11(csk);
	FUNC17(&psock->strp);
	FUNC9(csk);

	FUNC3(psock->bpf_prog);

	FUNC15(&mux->lock);

	FUNC2(&psock->stats, &mux->aggregate_psock_stats);
	FUNC12(&psock->strp, &mux->aggregate_strp_stats);

	FUNC0(mux->stats.psock_unattach);

	if (psock->tx_kcm) {
		/* psock was reserved.  Just mark it finished and we will clean
		 * up in the kcm paths, we need kcm lock which can not be
		 * acquired here.
		 */
		FUNC0(mux->stats.psock_unattach_rsvd);
		FUNC16(&mux->lock);

		/* We are unattaching a socket that is reserved. Abort the
		 * socket since we may be out of sync in sending on it. We need
		 * to do this without the mux lock.
		 */
		FUNC5(psock, EPIPE, false);

		FUNC15(&mux->lock);
		if (!psock->tx_kcm) {
			/* psock now unreserved in window mux was unlocked */
			goto no_reserved;
		}
		psock->done = 1;

		/* Commit done before queuing work to process it */
		FUNC13();

		/* Queue tx work to make sure psock->done is handled */
		FUNC10(kcm_wq, &psock->tx_kcm->tx_work);
		FUNC16(&mux->lock);
	} else {
no_reserved:
		if (!psock->tx_stopped)
			FUNC8(&psock->psock_avail_list);
		FUNC8(&psock->psock_list);
		mux->psocks_cnt--;
		FUNC16(&mux->lock);

		FUNC14(csk);
		FUNC4(csk->sk_socket->file);
		FUNC7(kcm_psockp, psock);
	}

	FUNC11(csk);
}