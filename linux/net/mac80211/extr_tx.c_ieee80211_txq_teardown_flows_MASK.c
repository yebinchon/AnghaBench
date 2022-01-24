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
struct fq {int /*<<< orphan*/  lock; } ;
struct ieee80211_local {int /*<<< orphan*/ * cvars; TYPE_1__* ops; struct fq fq; } ;
struct TYPE_2__ {int /*<<< orphan*/  wake_tx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fq_skb_free_func ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ieee80211_local *local)
{
	struct fq *fq = &local->fq;

	if (!local->ops->wake_tx_queue)
		return;

	FUNC1(local->cvars);
	local->cvars = NULL;

	FUNC2(&fq->lock);
	FUNC0(fq, fq_skb_free_func);
	FUNC3(&fq->lock);
}