#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sk_receive_queue; } ;
struct kcm_sock {int done; int rx_disabled; TYPE_1__ sk; int /*<<< orphan*/  done_work; int /*<<< orphan*/ * rx_psock; } ;
struct kcm_psock {struct kcm_sock* rx_kcm; struct kcm_mux* mux; } ;
struct kcm_mux {int /*<<< orphan*/  rx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcm_done_work ; 
 int /*<<< orphan*/  FUNC1 (struct kcm_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct kcm_mux*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct kcm_psock *psock,
			     bool rcv_ready)
{
	struct kcm_sock *kcm = psock->rx_kcm;
	struct kcm_mux *mux = psock->mux;

	if (!kcm)
		return;

	FUNC6(&mux->rx_lock);

	psock->rx_kcm = NULL;
	kcm->rx_psock = NULL;

	/* Commit kcm->rx_psock before sk_rmem_alloc_get to sync with
	 * kcm_rfree
	 */
	FUNC5();

	if (FUNC8(kcm->done)) {
		FUNC7(&mux->rx_lock);

		/* Need to run kcm_done in a task since we need to qcquire
		 * callback locks which may already be held here.
		 */
		FUNC0(&kcm->done_work, kcm_done_work);
		FUNC3(&kcm->done_work);
		return;
	}

	if (FUNC8(kcm->rx_disabled)) {
		FUNC2(mux, &kcm->sk.sk_receive_queue);
	} else if (rcv_ready || FUNC8(!FUNC4(&kcm->sk))) {
		/* Check for degenerative race with rx_wait that all
		 * data was dequeued (accounted for in kcm_rfree).
		 */
		FUNC1(kcm);
	}
	FUNC7(&mux->rx_lock);
}