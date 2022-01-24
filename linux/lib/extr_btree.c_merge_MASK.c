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
struct btree_head {int /*<<< orphan*/  mempool; } ;
struct btree_geo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btree_geo*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btree_head*,struct btree_geo*,int /*<<< orphan*/ ,int) ; 
 unsigned long* FUNC2 (struct btree_geo*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btree_geo*,unsigned long*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btree_geo*,unsigned long*,int,unsigned long*) ; 

__attribute__((used)) static void FUNC6(struct btree_head *head, struct btree_geo *geo, int level,
		unsigned long *left, int lfill,
		unsigned long *right, int rfill,
		unsigned long *parent, int lpos)
{
	int i;

	for (i = 0; i < rfill; i++) {
		/* Move all keys to the left */
		FUNC4(geo, left, lfill + i, FUNC0(geo, right, i));
		FUNC5(geo, left, lfill + i, FUNC2(geo, right, i));
	}
	/* Exchange left and right child in parent */
	FUNC5(geo, parent, lpos, right);
	FUNC5(geo, parent, lpos + 1, left);
	/* Remove left (formerly right) child from parent */
	FUNC1(head, geo, FUNC0(geo, parent, lpos), level + 1);
	FUNC3(right, head->mempool);
}