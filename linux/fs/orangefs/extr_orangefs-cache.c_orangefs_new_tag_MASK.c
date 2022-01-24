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
struct orangefs_kernel_op_s {scalar_t__ tag; } ;

/* Variables and functions */
 int next_tag_value ; 
 int /*<<< orphan*/  next_tag_value_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct orangefs_kernel_op_s *op)
{
	FUNC0(&next_tag_value_lock);
	op->tag = next_tag_value++;
	if (next_tag_value == 0)
		next_tag_value = 100;
	FUNC1(&next_tag_value_lock);
}