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
struct sbq_wait_state {int /*<<< orphan*/  wait; int /*<<< orphan*/  wait_cnt; } ;
struct sbitmap_queue {int /*<<< orphan*/  wake_index; int /*<<< orphan*/  wake_batch; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sbq_wait_state* FUNC4 (struct sbitmap_queue*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static bool FUNC7(struct sbitmap_queue *sbq)
{
	struct sbq_wait_state *ws;
	unsigned int wake_batch;
	int wait_cnt;

	ws = FUNC4(sbq);
	if (!ws)
		return false;

	wait_cnt = FUNC2(&ws->wait_cnt);
	if (wait_cnt <= 0) {
		int ret;

		wake_batch = FUNC0(sbq->wake_batch);

		/*
		 * Pairs with the memory barrier in sbitmap_queue_resize() to
		 * ensure that we see the batch size update before the wait
		 * count is reset.
		 */
		FUNC5();

		/*
		 * For concurrent callers of this, the one that failed the
		 * atomic_cmpxhcg() race should call this function again
		 * to wakeup a new batch on a different 'ws'.
		 */
		ret = FUNC1(&ws->wait_cnt, wait_cnt, wake_batch);
		if (ret == wait_cnt) {
			FUNC3(&sbq->wake_index);
			FUNC6(&ws->wait, wake_batch);
			return false;
		}

		return true;
	}

	return false;
}