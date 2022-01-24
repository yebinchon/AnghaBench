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
struct frame_vector {scalar_t__ nr_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_vector*) ; 

void FUNC2(struct frame_vector *vec)
{
	/* Make sure put_vaddr_frames() got called properly... */
	FUNC0(vec->nr_frames > 0);
	FUNC1(vec);
}