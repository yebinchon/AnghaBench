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
struct kcm_sock {int tx_wait; struct kcm_psock* tx_psock; struct kcm_mux* mux; } ;
struct TYPE_4__ {int /*<<< orphan*/  unreserved; } ;
struct kcm_psock {TYPE_3__* sk; int /*<<< orphan*/  psock_list; scalar_t__ done; int /*<<< orphan*/  tx_stopped; TYPE_1__ stats; int /*<<< orphan*/ * tx_kcm; } ;
struct kcm_mux {int /*<<< orphan*/  lock; int /*<<< orphan*/  psocks_cnt; } ;
struct TYPE_6__ {TYPE_2__* sk_socket; } ;
struct TYPE_5__ {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcm_psockp ; 
 int /*<<< orphan*/  FUNC3 (struct kcm_mux*,struct kcm_psock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kcm_psock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kcm_psock*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct kcm_sock *kcm)
{
	struct kcm_psock *psock;
	struct kcm_mux *mux = kcm->mux;

	FUNC9(&mux->lock);

	psock = kcm->tx_psock;

	if (FUNC1(!psock)) {
		FUNC10(&mux->lock);
		return;
	}

	FUNC7(); /* Read tx_psock before tx_wait */

	FUNC3(mux, psock);

	FUNC1(kcm->tx_wait);

	kcm->tx_psock = NULL;
	psock->tx_kcm = NULL;
	FUNC0(psock->stats.unreserved);

	if (FUNC11(psock->tx_stopped)) {
		if (psock->done) {
			/* Deferred free */
			FUNC5(&psock->psock_list);
			mux->psocks_cnt--;
			FUNC8(psock->sk);
			FUNC2(psock->sk->sk_socket->file);
			FUNC4(kcm_psockp, psock);
		}

		/* Don't put back on available list */

		FUNC10(&mux->lock);

		return;
	}

	FUNC6(psock);

	FUNC10(&mux->lock);
}