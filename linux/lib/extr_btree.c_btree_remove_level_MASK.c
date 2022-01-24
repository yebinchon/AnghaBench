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
struct btree_head {int height; int /*<<< orphan*/ * node; } ;
struct btree_geo {int no_pairs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btree_geo*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btree_head*,struct btree_geo*) ; 
 void* FUNC2 (struct btree_geo*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btree_geo*,unsigned long*,int) ; 
 unsigned long* FUNC4 (struct btree_head*,struct btree_geo*,unsigned long*,int) ; 
 int FUNC5 (struct btree_geo*,unsigned long*,int) ; 
 int FUNC6 (struct btree_geo*,unsigned long*,unsigned long*) ; 
 scalar_t__ FUNC7 (struct btree_geo*,unsigned long*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (struct btree_head*,struct btree_geo*,unsigned long*,int,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btree_geo*,unsigned long*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btree_geo*,unsigned long*,int,void*) ; 

__attribute__((used)) static void *FUNC11(struct btree_head *head, struct btree_geo *geo,
		unsigned long *key, int level)
{
	unsigned long *node;
	int i, pos, fill;
	void *ret;

	if (level > head->height) {
		/* we recursed all the way up */
		head->height = 0;
		head->node = NULL;
		return NULL;
	}

	node = FUNC4(head, geo, key, level);
	pos = FUNC6(geo, node, key);
	fill = FUNC5(geo, node, pos);
	if ((level == 1) && (FUNC7(geo, node, pos, key) != 0))
		return NULL;
	ret = FUNC2(geo, node, pos);

	/* remove and shift */
	for (i = pos; i < fill - 1; i++) {
		FUNC9(geo, node, i, FUNC0(geo, node, i + 1));
		FUNC10(geo, node, i, FUNC2(geo, node, i + 1));
	}
	FUNC3(geo, node, fill - 1);

	if (fill - 1 < geo->no_pairs / 2) {
		if (level < head->height)
			FUNC8(head, geo, key, level, node, fill - 1);
		else if (fill - 1 == 1)
			FUNC1(head, geo);
	}

	return ret;
}