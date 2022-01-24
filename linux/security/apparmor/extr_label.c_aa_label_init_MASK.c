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
struct aa_label {int size; int /*<<< orphan*/  node; int /*<<< orphan*/  count; int /*<<< orphan*/ ** vec; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct aa_label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(struct aa_label *label, int size, gfp_t gfp)
{
	FUNC0(!label);
	FUNC0(size < 1);

	if (FUNC2(label, gfp) < 0)
		return false;

	label->size = size;			/* doesn't include null */
	label->vec[size] = NULL;		/* null terminate */
	FUNC3(&label->count);
	FUNC1(&label->node);

	return true;
}