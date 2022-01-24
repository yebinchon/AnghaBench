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
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct kcm_sock {int done; int rx_disabled; int rx_wait; struct sock sk; int /*<<< orphan*/  kcm_sock_list; int /*<<< orphan*/  wait_rx_list; scalar_t__ rx_psock; struct kcm_mux* mux; } ;
struct kcm_mux {int kcm_socks_cnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kcm_mux*) ; 
 int /*<<< orphan*/  FUNC3 (struct kcm_mux*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct kcm_sock *kcm)
{
	struct kcm_mux *mux = kcm->mux;
	struct sock *sk = &kcm->sk;
	int socks_cnt;

	FUNC6(&mux->rx_lock);
	if (kcm->rx_psock) {
		/* Cleanup in unreserve_rx_kcm */
		FUNC0(kcm->done);
		kcm->rx_disabled = 1;
		kcm->done = 1;
		FUNC7(&mux->rx_lock);
		return;
	}

	if (kcm->rx_wait) {
		FUNC1(&kcm->wait_rx_list);
		kcm->rx_wait = false;
	}
	/* Move any pending receive messages to other kcm sockets */
	FUNC3(mux, &sk->sk_receive_queue);

	FUNC7(&mux->rx_lock);

	if (FUNC0(FUNC4(sk)))
		return;

	/* Detach from MUX */
	FUNC6(&mux->lock);

	FUNC1(&kcm->kcm_sock_list);
	mux->kcm_socks_cnt--;
	socks_cnt = mux->kcm_socks_cnt;

	FUNC7(&mux->lock);

	if (!socks_cnt) {
		/* We are done with the mux now. */
		FUNC2(mux);
	}

	FUNC0(kcm->rx_wait);

	FUNC5(&kcm->sk);
}