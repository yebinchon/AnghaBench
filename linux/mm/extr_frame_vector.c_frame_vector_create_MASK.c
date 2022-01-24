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
struct frame_vector {unsigned int nr_allocated; scalar_t__ nr_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 struct frame_vector* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct frame_vector *FUNC2(unsigned int nr_frames)
{
	struct frame_vector *vec;
	int size = sizeof(struct frame_vector) + sizeof(void *) * nr_frames;

	if (FUNC0(nr_frames == 0))
		return NULL;
	/*
	 * This is absurdly high. It's here just to avoid strange effects when
	 * arithmetics overflows.
	 */
	if (FUNC0(nr_frames > INT_MAX / sizeof(void *) / 2))
		return NULL;
	/*
	 * Avoid higher order allocations, use vmalloc instead. It should
	 * be rare anyway.
	 */
	vec = FUNC1(size, GFP_KERNEL);
	if (!vec)
		return NULL;
	vec->nr_allocated = nr_frames;
	vec->nr_frames = 0;
	return vec;
}