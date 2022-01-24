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
struct sg_mapping_iter {int __flags; scalar_t__ __offset; int /*<<< orphan*/  page; scalar_t__ addr; int /*<<< orphan*/  __remaining; int /*<<< orphan*/  length; int /*<<< orphan*/  consumed; int /*<<< orphan*/  piter; } ;

/* Variables and functions */
 int SG_MITER_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(struct sg_mapping_iter *miter)
{
	FUNC3(miter);

	/*
	 * Get to the next page if necessary.
	 * __remaining, __offset is adjusted by sg_miter_stop
	 */
	if (!FUNC2(miter))
		return false;

	miter->page = FUNC4(&miter->piter);
	miter->consumed = miter->length = miter->__remaining;

	if (miter->__flags & SG_MITER_ATOMIC)
		miter->addr = FUNC1(miter->page) + miter->__offset;
	else
		miter->addr = FUNC0(miter->page) + miter->__offset;

	return true;
}