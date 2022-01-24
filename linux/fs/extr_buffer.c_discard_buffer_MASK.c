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
struct buffer_head {unsigned long b_state; int /*<<< orphan*/ * b_bdev; } ;

/* Variables and functions */
 unsigned long BUFFER_FLAGS_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 unsigned long FUNC1 (unsigned long*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC4(struct buffer_head * bh)
{
	unsigned long b_state, b_state_old;

	FUNC2(bh);
	FUNC0(bh);
	bh->b_bdev = NULL;
	b_state = bh->b_state;
	for (;;) {
		b_state_old = FUNC1(&bh->b_state, b_state,
				      (b_state & ~BUFFER_FLAGS_DISCARD));
		if (b_state_old == b_state)
			break;
		b_state = b_state_old;
	}
	FUNC3(bh);
}