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
struct threads {int /*<<< orphan*/ * last_match; int /*<<< orphan*/  dead; scalar_t__ nr; int /*<<< orphan*/  lock; int /*<<< orphan*/  entries; } ;
struct machine {struct threads* threads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT_CACHED ; 
 int THREADS__TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct machine *machine)
{
	int i;

	for (i = 0; i < THREADS__TABLE_SIZE; i++) {
		struct threads *threads = &machine->threads[i];
		threads->entries = RB_ROOT_CACHED;
		FUNC1(&threads->lock);
		threads->nr = 0;
		FUNC0(&threads->dead);
		threads->last_match = NULL;
	}
}