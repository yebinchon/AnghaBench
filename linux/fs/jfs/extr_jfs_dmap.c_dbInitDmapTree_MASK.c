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
typedef  int /*<<< orphan*/  u8 ;
struct dmaptree {void* leafidx; int /*<<< orphan*/ * stree; int /*<<< orphan*/  budmin; void* height; void* l2nleafs; void* nleafs; } ;
struct dmap {int /*<<< orphan*/ * wmap; struct dmaptree tree; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int /*<<< orphan*/  BUDMIN ; 
 int L2LPERDMAP ; 
 int LEAFIND ; 
 int LPERDMAP ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct dmaptree*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct dmap * dp)
{
	struct dmaptree *tp;
	s8 *cp;
	int i;

	/* init fixed info of tree */
	tp = &dp->tree;
	tp->nleafs = FUNC0(LPERDMAP);
	tp->l2nleafs = FUNC0(L2LPERDMAP);
	tp->leafidx = FUNC0(LEAFIND);
	tp->height = FUNC0(4);
	tp->budmin = BUDMIN;

	/* init each leaf from corresponding wmap word:
	 * note: leaf is set to NOFREE(-1) if all blocks of corresponding
	 * bitmap word are allocated.
	 */
	cp = tp->stree + FUNC3(tp->leafidx);
	for (i = 0; i < LPERDMAP; i++)
		*cp++ = FUNC2((u8 *) & dp->wmap[i]);

	/* build the dmap's binary buddy summary tree */
	return (FUNC1(tp));
}