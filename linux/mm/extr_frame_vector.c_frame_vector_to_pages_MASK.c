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
struct page {int dummy; } ;
struct frame_vector {int is_pfns; int nr_frames; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long* FUNC0 (struct frame_vector*) ; 
 struct page* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

int FUNC3(struct frame_vector *vec)
{
	int i;
	unsigned long *nums;
	struct page **pages;

	if (!vec->is_pfns)
		return 0;
	nums = FUNC0(vec);
	for (i = 0; i < vec->nr_frames; i++)
		if (!FUNC2(nums[i]))
			return -EINVAL;
	pages = (struct page **)nums;
	for (i = 0; i < vec->nr_frames; i++)
		pages[i] = FUNC1(nums[i]);
	vec->is_pfns = false;
	return 0;
}