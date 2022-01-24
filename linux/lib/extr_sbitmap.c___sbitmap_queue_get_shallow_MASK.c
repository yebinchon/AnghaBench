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
struct sbitmap_queue {unsigned int min_shallow_depth; int round_robin; int /*<<< orphan*/ * alloc_hint; TYPE_1__ sb; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 () ; 
 int FUNC3 (TYPE_1__*,unsigned int,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct sbitmap_queue *sbq,
				unsigned int shallow_depth)
{
	unsigned int hint, depth;
	int nr;

	FUNC1(shallow_depth < sbq->min_shallow_depth);

	hint = FUNC4(*sbq->alloc_hint);
	depth = FUNC0(sbq->sb.depth);
	if (FUNC6(hint >= depth)) {
		hint = depth ? FUNC2() % depth : 0;
		FUNC5(*sbq->alloc_hint, hint);
	}
	nr = FUNC3(&sbq->sb, hint, shallow_depth);

	if (nr == -1) {
		/* If the map is full, a hint won't do us much good. */
		FUNC5(*sbq->alloc_hint, 0);
	} else if (nr == hint || FUNC6(sbq->round_robin)) {
		/* Only update the hint if we used it. */
		hint = nr + 1;
		if (hint >= depth - 1)
			hint = 0;
		FUNC5(*sbq->alloc_hint, hint);
	}

	return nr;
}