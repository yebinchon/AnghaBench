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
struct hist_entry {TYPE_1__* branch_info; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_2__ {void* srcline_to; int /*<<< orphan*/  to; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 

__attribute__((used)) static int64_t
FUNC2(struct hist_entry *left, struct hist_entry *right)
{
	if (!left->branch_info->srcline_to)
		left->branch_info->srcline_to = FUNC0(&left->branch_info->to);

	if (!right->branch_info->srcline_to)
		right->branch_info->srcline_to = FUNC0(&right->branch_info->to);

	return FUNC1(right->branch_info->srcline_to, left->branch_info->srcline_to);
}