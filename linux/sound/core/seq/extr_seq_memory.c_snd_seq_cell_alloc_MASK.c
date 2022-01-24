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
typedef  int /*<<< orphan*/  wait_queue_entry_t ;
struct snd_seq_pool {int max_used; int /*<<< orphan*/  lock; int /*<<< orphan*/  event_alloc_failures; int /*<<< orphan*/  event_alloc_success; int /*<<< orphan*/  counter; struct snd_seq_event_cell* free; scalar_t__ closing; int /*<<< orphan*/  output_sleep; int /*<<< orphan*/ * ptr; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; } ;
struct mutex {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC5 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct snd_seq_pool *pool,
			      struct snd_seq_event_cell **cellp,
			      int nonblock, struct file *file,
			      struct mutex *mutexp)
{
	struct snd_seq_event_cell *cell;
	unsigned long flags;
	int err = -EAGAIN;
	wait_queue_entry_t wait;

	if (pool == NULL)
		return -EINVAL;

	*cellp = NULL;

	FUNC3(&wait, current);
	FUNC11(&pool->lock, flags);
	if (pool->ptr == NULL) {	/* not initialized */
		FUNC6("ALSA: seq: pool is not initialized\n");
		err = -EINVAL;
		goto __error;
	}
	while (pool->free == NULL && ! nonblock && ! pool->closing) {

		FUNC9(TASK_INTERRUPTIBLE);
		FUNC0(&pool->output_sleep, &wait);
		FUNC12(&pool->lock, flags);
		if (mutexp)
			FUNC5(mutexp);
		FUNC8();
		if (mutexp)
			FUNC4(mutexp);
		FUNC11(&pool->lock, flags);
		FUNC7(&pool->output_sleep, &wait);
		/* interrupted? */
		if (FUNC10(current)) {
			err = -ERESTARTSYS;
			goto __error;
		}
	}
	if (pool->closing) { /* closing.. */
		err = -ENOMEM;
		goto __error;
	}

	cell = pool->free;
	if (cell) {
		int used;
		pool->free = cell->next;
		FUNC1(&pool->counter);
		used = FUNC2(&pool->counter);
		if (pool->max_used < used)
			pool->max_used = used;
		pool->event_alloc_success++;
		/* clear cell pointers */
		cell->next = NULL;
		err = 0;
	} else
		pool->event_alloc_failures++;
	*cellp = cell;

__error:
	FUNC12(&pool->lock, flags);
	return err;
}