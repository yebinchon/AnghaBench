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
struct gcov_iterator {struct gcov_info* info; } ;
struct gcov_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct gcov_iterator* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct gcov_iterator*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  type_info ; 

struct gcov_iterator *FUNC3(struct gcov_info *info)
{
	struct gcov_iterator *iter;

	iter = FUNC0(FUNC2(iter, type_info, FUNC1(info)),
		       GFP_KERNEL);
	if (iter)
		iter->info = info;

	return iter;
}