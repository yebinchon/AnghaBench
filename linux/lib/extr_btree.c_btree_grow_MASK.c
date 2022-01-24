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
struct btree_head {unsigned long* node; int /*<<< orphan*/  height; } ;
struct btree_geo {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct btree_geo*,unsigned long*,int) ; 
 unsigned long* FUNC1 (struct btree_head*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btree_geo*,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btree_geo*,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btree_geo*,unsigned long*,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC5(struct btree_head *head, struct btree_geo *geo,
		      gfp_t gfp)
{
	unsigned long *node;
	int fill;

	node = FUNC1(head, gfp);
	if (!node)
		return -ENOMEM;
	if (head->node) {
		fill = FUNC2(geo, head->node, 0);
		FUNC3(geo, node, 0, FUNC0(geo, head->node, fill - 1));
		FUNC4(geo, node, 0, head->node);
	}
	head->node = node;
	head->height++;
	return 0;
}