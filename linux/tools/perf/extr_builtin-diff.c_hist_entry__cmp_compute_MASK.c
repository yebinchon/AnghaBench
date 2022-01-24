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
struct hist_entry {int dummy; } ;
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 (struct hist_entry*,struct hist_entry*,int) ; 
 int /*<<< orphan*/ * data__files ; 
 struct hist_entry* FUNC1 (struct hist_entry*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hist_entry*) ; 

__attribute__((used)) static int64_t
FUNC3(struct hist_entry *left, struct hist_entry *right,
			int c, int sort_idx)
{
	bool pairs_left  = FUNC2(left);
	bool pairs_right = FUNC2(right);
	struct hist_entry *p_right, *p_left;

	if (!pairs_left && !pairs_right)
		return 0;

	if (!pairs_left || !pairs_right)
		return pairs_left ? -1 : 1;

	p_left  = FUNC1(left,  &data__files[sort_idx]);
	p_right = FUNC1(right, &data__files[sort_idx]);

	if (!p_left && !p_right)
		return 0;

	if (!p_left || !p_right)
		return p_left ? -1 : 1;

	/*
	 * We have 2 entries of same kind, let's
	 * make the data comparison.
	 */
	return FUNC0(p_left, p_right, c);
}