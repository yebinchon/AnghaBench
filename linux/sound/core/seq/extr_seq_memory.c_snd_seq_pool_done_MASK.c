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
struct snd_seq_pool {int /*<<< orphan*/  lock; scalar_t__ closing; scalar_t__ total_elements; int /*<<< orphan*/ * free; struct snd_seq_event_cell* ptr; int /*<<< orphan*/  counter; int /*<<< orphan*/  output_sleep; } ;
struct snd_seq_event_cell {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_event_cell*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct snd_seq_pool *pool)
{
	struct snd_seq_event_cell *ptr;

	if (FUNC3(!pool))
		return -EINVAL;

	/* wait for closing all threads */
	if (FUNC6(&pool->output_sleep))
		FUNC7(&pool->output_sleep);

	while (FUNC0(&pool->counter) > 0)
		FUNC2(1);
	
	/* release all resources */
	FUNC4(&pool->lock);
	ptr = pool->ptr;
	pool->ptr = NULL;
	pool->free = NULL;
	pool->total_elements = 0;
	FUNC5(&pool->lock);

	FUNC1(ptr);

	FUNC4(&pool->lock);
	pool->closing = 0;
	FUNC5(&pool->lock);

	return 0;
}