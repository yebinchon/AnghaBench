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
struct snd_seq_pool {int dummy; } ;
struct snd_seq_fifo {int /*<<< orphan*/  use_lock; int /*<<< orphan*/  lock; scalar_t__ cells; int /*<<< orphan*/ * tail; struct snd_seq_event_cell* head; struct snd_seq_pool* pool; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_event_cell*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_pool**) ; 
 scalar_t__ FUNC3 (struct snd_seq_pool*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_seq_pool*) ; 
 struct snd_seq_pool* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct snd_seq_fifo *f, int poolsize)
{
	struct snd_seq_pool *newpool, *oldpool;
	struct snd_seq_event_cell *cell, *next, *oldhead;

	if (FUNC0(!f || !f->pool))
		return -EINVAL;

	/* allocate new pool */
	newpool = FUNC5(poolsize);
	if (newpool == NULL)
		return -ENOMEM;
	if (FUNC3(newpool) < 0) {
		FUNC2(&newpool);
		return -ENOMEM;
	}

	FUNC7(&f->lock);
	/* remember old pool */
	oldpool = f->pool;
	oldhead = f->head;
	/* exchange pools */
	f->pool = newpool;
	f->head = NULL;
	f->tail = NULL;
	f->cells = 0;
	/* NOTE: overflow flag is not cleared */
	FUNC8(&f->lock);

	/* close the old pool and wait until all users are gone */
	FUNC4(oldpool);
	FUNC6(&f->use_lock);

	/* release cells in old pool */
	for (cell = oldhead; cell; cell = next) {
		next = cell->next;
		FUNC1(cell);
	}
	FUNC2(&oldpool);

	return 0;
}