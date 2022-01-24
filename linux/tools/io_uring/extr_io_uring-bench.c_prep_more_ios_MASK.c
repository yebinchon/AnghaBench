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
struct io_sq_ring {unsigned int* tail; unsigned int* head; unsigned int* array; } ;
struct submitter {struct io_sq_ring sq_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct submitter*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int sq_ring_mask ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct submitter *s, unsigned max_ios)
{
	struct io_sq_ring *ring = &s->sq_ring;
	unsigned index, tail, next_tail, prepped = 0;

	next_tail = tail = *ring->tail;
	do {
		next_tail++;
		FUNC1();
		if (next_tail == *ring->head)
			break;

		index = tail & sq_ring_mask;
		FUNC0(s, index);
		ring->array[index] = index;
		prepped++;
		tail = next_tail;
	} while (prepped < max_ios);

	if (*ring->tail != tail) {
		/* order tail store with writes to sqes above */
		FUNC2();
		*ring->tail = tail;
		FUNC2();
	}
	return prepped;
}