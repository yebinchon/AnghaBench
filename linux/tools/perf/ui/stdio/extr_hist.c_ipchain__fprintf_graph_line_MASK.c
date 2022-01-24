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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static size_t FUNC2(FILE *fp, int depth, int depth_mask,
					  int left_margin)
{
	int i;
	size_t ret = FUNC0(fp, left_margin);

	for (i = 0; i < depth; i++)
		if (depth_mask & (1 << i))
			ret += FUNC1(fp, "|          ");
		else
			ret += FUNC1(fp, "           ");

	ret += FUNC1(fp, "\n");

	return ret;
}