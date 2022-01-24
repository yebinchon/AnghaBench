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
struct sbq_wait_state {int /*<<< orphan*/  wait; } ;
struct sbitmap_queue {int /*<<< orphan*/  wake_index; struct sbq_wait_state* ws; int /*<<< orphan*/  ws_active; } ;

/* Variables and functions */
 int SBQ_WAIT_QUEUES ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sbq_wait_state *FUNC4(struct sbitmap_queue *sbq)
{
	int i, wake_index;

	if (!FUNC0(&sbq->ws_active))
		return NULL;

	wake_index = FUNC0(&sbq->wake_index);
	for (i = 0; i < SBQ_WAIT_QUEUES; i++) {
		struct sbq_wait_state *ws = &sbq->ws[wake_index];

		if (FUNC3(&ws->wait)) {
			if (wake_index != FUNC0(&sbq->wake_index))
				FUNC1(&sbq->wake_index, wake_index);
			return ws;
		}

		wake_index = FUNC2(wake_index);
	}

	return NULL;
}