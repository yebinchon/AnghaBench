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
typedef  int u64 ;
struct ocfs2_super {int local_alloc_bits; int /*<<< orphan*/  osb_lock; int /*<<< orphan*/  local_alloc_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,int /*<<< orphan*/ ,int,int) ; 

int FUNC4(struct ocfs2_super *osb, u64 bits)
{
	int ret = 0;
	int la_bits;

	FUNC1(&osb->osb_lock);
	la_bits = osb->local_alloc_bits;

	if (!FUNC0(osb))
		goto bail;

	/* la_bits should be at least twice the size (in clusters) of
	 * a new block group. We want to be sure block group
	 * allocations go through the local alloc, so allow an
	 * allocation to take up to half the bitmap. */
	if (bits > (la_bits / 2))
		goto bail;

	ret = 1;
bail:
	FUNC3(
	     (unsigned long long)bits, osb->local_alloc_state, la_bits, ret);
	FUNC2(&osb->osb_lock);
	return ret;
}