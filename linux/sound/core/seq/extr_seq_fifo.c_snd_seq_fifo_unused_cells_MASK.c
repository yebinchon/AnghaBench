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
struct snd_seq_fifo {int /*<<< orphan*/  use_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct snd_seq_fifo *f)
{
	unsigned long flags;
	int cells;

	if (!f)
		return 0;

	FUNC2(&f->use_lock);
	FUNC3(&f->lock, flags);
	cells = FUNC0(f->pool);
	FUNC4(&f->lock, flags);
	FUNC1(&f->use_lock);
	return cells;
}