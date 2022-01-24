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
struct cma {unsigned long base_pfn; unsigned long order_per_bit; int /*<<< orphan*/  lock; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 unsigned long FUNC1 (struct cma*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct cma *cma, unsigned long pfn,
			     unsigned int count)
{
	unsigned long bitmap_no, bitmap_count;

	bitmap_no = (pfn - cma->base_pfn) >> cma->order_per_bit;
	bitmap_count = FUNC1(cma, count);

	FUNC2(&cma->lock);
	FUNC0(cma->bitmap, bitmap_no, bitmap_count);
	FUNC3(&cma->lock);
}