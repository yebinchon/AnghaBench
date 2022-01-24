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
struct sg_mapping_iter {scalar_t__ consumed; scalar_t__ length; int __flags; int /*<<< orphan*/ * addr; int /*<<< orphan*/ * page; int /*<<< orphan*/  __remaining; int /*<<< orphan*/  __offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SG_MITER_ATOMIC ; 
 int SG_MITER_TO_SG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct sg_mapping_iter *miter)
{
	FUNC1(miter->consumed > miter->length);

	/* drop resources from the last iteration */
	if (miter->addr) {
		miter->__offset += miter->consumed;
		miter->__remaining -= miter->consumed;

		if ((miter->__flags & SG_MITER_TO_SG) &&
		    !FUNC0(miter->page))
			FUNC3(miter->page);

		if (miter->__flags & SG_MITER_ATOMIC) {
			FUNC2(FUNC6());
			FUNC5(miter->addr);
		} else
			FUNC4(miter->page);

		miter->page = NULL;
		miter->addr = NULL;
		miter->length = 0;
		miter->consumed = 0;
	}
}