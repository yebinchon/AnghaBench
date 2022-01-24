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
 unsigned long FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct cma*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *data, u64 *val)
{
	struct cma *cma = data;
	unsigned long used;

	FUNC2(&cma->lock);
	/* pages counter is smaller than sizeof(int) */
	used = FUNC0(cma->bitmap, (int)FUNC1(cma));
	FUNC3(&cma->lock);
	*val = (u64)used << cma->order_per_bit;

	return 0;
}