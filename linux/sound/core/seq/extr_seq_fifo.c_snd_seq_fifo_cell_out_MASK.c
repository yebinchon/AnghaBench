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
struct snd_seq_fifo {int /*<<< orphan*/  lock; int /*<<< orphan*/  input_sleep; } ;
struct snd_seq_event_cell {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 struct snd_seq_event_cell* FUNC1 (struct snd_seq_fifo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC10(struct snd_seq_fifo *f,
			  struct snd_seq_event_cell **cellp, int nonblock)
{
	struct snd_seq_event_cell *cell;
	unsigned long flags;
	wait_queue_entry_t wait;

	if (FUNC7(!f))
		return -EINVAL;

	*cellp = NULL;
	FUNC2(&wait, current);
	FUNC8(&f->lock, flags);
	while ((cell = FUNC1(f)) == NULL) {
		if (nonblock) {
			/* non-blocking - return immediately */
			FUNC9(&f->lock, flags);
			return -EAGAIN;
		}
		FUNC5(TASK_INTERRUPTIBLE);
		FUNC0(&f->input_sleep, &wait);
		FUNC9(&f->lock, flags);
		FUNC4();
		FUNC8(&f->lock, flags);
		FUNC3(&f->input_sleep, &wait);
		if (FUNC6(current)) {
			FUNC9(&f->lock, flags);
			return -ERESTARTSYS;
		}
	}
	FUNC9(&f->lock, flags);
	*cellp = cell;

	return 0;
}