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
struct snd_seq_fifo {int /*<<< orphan*/  lock; int /*<<< orphan*/  use_lock; int /*<<< orphan*/  overflow; } ;
struct snd_seq_event_cell {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct snd_seq_event_cell* FUNC1 (struct snd_seq_fifo*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_event_cell*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct snd_seq_fifo *f)
{
	struct snd_seq_event_cell *cell;

	/* clear overflow flag */
	FUNC0(&f->overflow, 0);

	FUNC3(&f->use_lock);
	FUNC4(&f->lock);
	/* drain the fifo */
	while ((cell = FUNC1(f)) != NULL) {
		FUNC2(cell);
	}
	FUNC5(&f->lock);
}