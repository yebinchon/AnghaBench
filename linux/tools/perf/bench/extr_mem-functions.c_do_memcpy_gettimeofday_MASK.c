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
struct timeval {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* memcpy ) (void*,void*,size_t) ;} ;
struct function {TYPE_1__ fn; } ;
typedef  int /*<<< orphan*/  (* memcpy_t ) (void*,void*,size_t) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int nr_loops ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,struct timeval*,struct timeval*) ; 
 double FUNC3 (struct timeval*) ; 

__attribute__((used)) static double FUNC4(const struct function *r, size_t size, void *src, void *dst)
{
	struct timeval tv_start, tv_end, tv_diff;
	memcpy_t fn = r->fn.memcpy;
	int i;

	/*
	 * We prefault the freshly allocated memory range here,
	 * to not measure page fault overhead:
	 */
	fn(dst, src, size);

	FUNC0(FUNC1(&tv_start, NULL));
	for (i = 0; i < nr_loops; ++i)
		fn(dst, src, size);
	FUNC0(FUNC1(&tv_end, NULL));

	FUNC2(&tv_end, &tv_start, &tv_diff);

	return (double)(((double)size * nr_loops) / FUNC3(&tv_diff));
}