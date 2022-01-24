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
struct kcm_sock {scalar_t__ rx_disabled; struct kcm_mux* mux; } ;
struct kcm_mux {int /*<<< orphan*/  rx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kcm_sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct kcm_sock *kcm)
{
	struct kcm_mux *mux = kcm->mux;

	if (!kcm->rx_disabled)
		return;

	FUNC1(&mux->rx_lock);

	kcm->rx_disabled = 0;
	FUNC0(kcm);

	FUNC2(&mux->rx_lock);
}