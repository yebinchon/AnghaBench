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
struct dmaptree {int dummy; } ;
struct dmapctl {int /*<<< orphan*/ * stree; scalar_t__ budmin; void* height; void* leafidx; void* l2nleafs; void* nleafs; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int CTLLEAFIND ; 
 scalar_t__ L2BPERDMAP ; 
 int L2LPERCTL ; 
 int LPERCTL ; 
 int /*<<< orphan*/  NOFREE ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct dmaptree*) ; 

__attribute__((used)) static int FUNC2(struct dmapctl * dcp, int level, int i)
{				/* start leaf index not covered by range */
	s8 *cp;

	dcp->nleafs = FUNC0(LPERCTL);
	dcp->l2nleafs = FUNC0(L2LPERCTL);
	dcp->leafidx = FUNC0(CTLLEAFIND);
	dcp->height = FUNC0(5);
	dcp->budmin = L2BPERDMAP + L2LPERCTL * level;

	/*
	 * initialize the leaves of current level that were not covered
	 * by the specified input block range (i.e. the leaves have no
	 * low level dmapctl or dmap).
	 */
	cp = &dcp->stree[CTLLEAFIND + i];
	for (; i < LPERCTL; i++)
		*cp++ = NOFREE;

	/* build the dmap's binary buddy summary tree */
	return (FUNC1((struct dmaptree *) dcp));
}