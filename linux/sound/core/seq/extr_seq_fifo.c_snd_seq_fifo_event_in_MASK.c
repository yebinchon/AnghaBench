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
struct snd_seq_fifo {int /*<<< orphan*/  use_lock; int /*<<< orphan*/  input_sleep; int /*<<< orphan*/  lock; int /*<<< orphan*/  cells; struct snd_seq_event_cell* head; struct snd_seq_event_cell* tail; int /*<<< orphan*/  overflow; int /*<<< orphan*/  pool; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; } ;
struct snd_seq_event {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct snd_seq_event*,struct snd_seq_event_cell**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct snd_seq_fifo *f,
			  struct snd_seq_event *event)
{
	struct snd_seq_event_cell *cell;
	unsigned long flags;
	int err;

	if (FUNC1(!f))
		return -EINVAL;

	FUNC4(&f->use_lock);
	err = FUNC2(f->pool, event, &cell, 1, NULL, NULL); /* always non-blocking */
	if (err < 0) {
		if ((err == -ENOMEM) || (err == -EAGAIN))
			FUNC0(&f->overflow);
		FUNC3(&f->use_lock);
		return err;
	}
		
	/* append new cells to fifo */
	FUNC5(&f->lock, flags);
	if (f->tail != NULL)
		f->tail->next = cell;
	f->tail = cell;
	if (f->head == NULL)
		f->head = cell;
	cell->next = NULL;
	f->cells++;
	FUNC6(&f->lock, flags);

	/* wakeup client */
	if (FUNC7(&f->input_sleep))
		FUNC8(&f->input_sleep);

	FUNC3(&f->use_lock);

	return 0; /* success */

}