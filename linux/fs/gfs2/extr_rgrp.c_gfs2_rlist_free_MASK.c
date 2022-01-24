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
struct gfs2_rgrp_list {unsigned int rl_rgrps; int /*<<< orphan*/ * rl_ghs; int /*<<< orphan*/ * rl_rgd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct gfs2_rgrp_list *rlist)
{
	unsigned int x;

	FUNC1(rlist->rl_rgd);

	if (rlist->rl_ghs) {
		for (x = 0; x < rlist->rl_rgrps; x++)
			FUNC0(&rlist->rl_ghs[x]);
		FUNC1(rlist->rl_ghs);
		rlist->rl_ghs = NULL;
	}
}