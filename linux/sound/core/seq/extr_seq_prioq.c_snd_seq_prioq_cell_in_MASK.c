#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_seq_prioq {int /*<<< orphan*/  lock; int /*<<< orphan*/  cells; struct snd_seq_event_cell* tail; struct snd_seq_event_cell* head; } ;
struct TYPE_5__ {int flags; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; TYPE_1__ event; } ;

/* Variables and functions */
 int EINVAL ; 
 int SNDRV_SEQ_PRIORITY_MASK ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct snd_seq_prioq * f,
			  struct snd_seq_event_cell * cell)
{
	struct snd_seq_event_cell *cur, *prev;
	unsigned long flags;
	int count;
	int prior;

	if (FUNC3(!f || !cell))
		return -EINVAL;
	
	/* check flags */
	prior = (cell->event.flags & SNDRV_SEQ_PRIORITY_MASK);

	FUNC4(&f->lock, flags);

	/* check if this element needs to inserted at the end (ie. ordered 
	   data is inserted) This will be very likeley if a sequencer 
	   application or midi file player is feeding us (sequential) data */
	if (f->tail && !prior) {
		if (FUNC0(&cell->event, &f->tail->event)) {
			/* add new cell to tail of the fifo */
			f->tail->next = cell;
			f->tail = cell;
			cell->next = NULL;
			f->cells++;
			FUNC5(&f->lock, flags);
			return 0;
		}
	}
	/* traverse list of elements to find the place where the new cell is
	   to be inserted... Note that this is a order n process ! */

	prev = NULL;		/* previous cell */
	cur = f->head;		/* cursor */

	count = 10000; /* FIXME: enough big, isn't it? */
	while (cur != NULL) {
		/* compare timestamps */
		int rel = FUNC1(&cell->event, &cur->event);
		if (rel < 0)
			/* new cell has earlier schedule time, */
			break;
		else if (rel == 0 && prior)
			/* equal schedule time and prior to others */
			break;
		/* new cell has equal or larger schedule time, */
		/* move cursor to next cell */
		prev = cur;
		cur = cur->next;
		if (! --count) {
			FUNC5(&f->lock, flags);
			FUNC2("ALSA: seq: cannot find a pointer.. infinite loop?\n");
			return -EINVAL;
		}
	}

	/* insert it before cursor */
	if (prev != NULL)
		prev->next = cell;
	cell->next = cur;

	if (f->head == cur) /* this is the first cell, set head to it */
		f->head = cell;
	if (cur == NULL) /* reached end of the list */
		f->tail = cell;
	f->cells++;
	FUNC5(&f->lock, flags);
	return 0;
}