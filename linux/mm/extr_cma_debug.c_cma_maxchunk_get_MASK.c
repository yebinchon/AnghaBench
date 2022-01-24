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
struct cma {int order_per_bit; int /*<<< orphan*/  lock; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct cma*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void *data, u64 *val)
{
	struct cma *cma = data;
	unsigned long maxchunk = 0;
	unsigned long start, end = 0;
	unsigned long bitmap_maxno = FUNC0(cma);

	FUNC4(&cma->lock);
	for (;;) {
		start = FUNC2(cma->bitmap, bitmap_maxno, end);
		if (start >= bitmap_maxno)
			break;
		end = FUNC1(cma->bitmap, bitmap_maxno, start);
		maxchunk = FUNC3(end - start, maxchunk);
	}
	FUNC5(&cma->lock);
	*val = (u64)maxchunk << cma->order_per_bit;

	return 0;
}