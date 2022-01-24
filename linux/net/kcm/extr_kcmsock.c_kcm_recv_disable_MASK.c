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
struct kcm_sock {int rx_disabled; int rx_wait; TYPE_1__ sk; int /*<<< orphan*/  wait_rx_list; int /*<<< orphan*/  rx_psock; struct kcm_mux* mux; } ;
struct kcm_mux {int /*<<< orphan*/  rx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kcm_mux*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct kcm_sock *kcm)
{
	struct kcm_mux *mux = kcm->mux;

	if (kcm->rx_disabled)
		return;

	FUNC2(&mux->rx_lock);

	kcm->rx_disabled = 1;

	/* If a psock is reserved we'll do cleanup in unreserve */
	if (!kcm->rx_psock) {
		if (kcm->rx_wait) {
			FUNC0(&kcm->wait_rx_list);
			kcm->rx_wait = false;
		}

		FUNC1(mux, &kcm->sk.sk_receive_queue);
	}

	FUNC3(&mux->rx_lock);
}