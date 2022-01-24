#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  depth; } ;
struct sbitmap_queue {int round_robin; int /*<<< orphan*/ * alloc_hint; TYPE_1__ sb; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 () ; 
 int FUNC2 (TYPE_1__*,unsigned int,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct sbitmap_queue *sbq)
{
	unsigned int hint, depth;
	int nr;

	hint = FUNC3(*sbq->alloc_hint);
	depth = FUNC0(sbq->sb.depth);
	if (FUNC5(hint >= depth)) {
		hint = depth ? FUNC1() % depth : 0;
		FUNC4(*sbq->alloc_hint, hint);
	}
	nr = FUNC2(&sbq->sb, hint, sbq->round_robin);

	if (nr == -1) {
		/* If the map is full, a hint won't do us much good. */
		FUNC4(*sbq->alloc_hint, 0);
	} else if (nr == hint || FUNC5(sbq->round_robin)) {
		/* Only update the hint if we used it. */
		hint = nr + 1;
		if (hint >= depth - 1)
			hint = 0;
		FUNC4(*sbq->alloc_hint, hint);
	}

	return nr;
}