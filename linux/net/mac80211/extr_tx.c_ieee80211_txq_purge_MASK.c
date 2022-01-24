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
struct TYPE_2__ {size_t ac; } ;
struct fq_tin {int dummy; } ;
struct txq_info {TYPE_1__ txq; int /*<<< orphan*/  schedule_order; int /*<<< orphan*/  frags; struct fq_tin tin; } ;
struct fq {int /*<<< orphan*/  lock; } ;
struct ieee80211_local {int /*<<< orphan*/ * active_txq_lock; int /*<<< orphan*/  hw; struct fq fq; } ;

/* Variables and functions */
 int /*<<< orphan*/  fq_skb_free_func ; 
 int /*<<< orphan*/  FUNC0 (struct fq*,struct fq_tin*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ieee80211_local *local,
			 struct txq_info *txqi)
{
	struct fq *fq = &local->fq;
	struct fq_tin *tin = &txqi->tin;

	FUNC3(&fq->lock);
	FUNC0(fq, tin, fq_skb_free_func);
	FUNC1(&local->hw, &txqi->frags);
	FUNC4(&fq->lock);

	FUNC3(&local->active_txq_lock[txqi->txq.ac]);
	FUNC2(&txqi->schedule_order);
	FUNC4(&local->active_txq_lock[txqi->txq.ac]);
}