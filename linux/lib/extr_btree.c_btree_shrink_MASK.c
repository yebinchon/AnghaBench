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
struct btree_head {int height; unsigned long* node; int /*<<< orphan*/  mempool; } ;
struct btree_geo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long* FUNC1 (struct btree_geo*,unsigned long*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btree_geo*,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct btree_head *head, struct btree_geo *geo)
{
	unsigned long *node;
	int fill;

	if (head->height <= 1)
		return;

	node = head->node;
	fill = FUNC2(geo, node, 0);
	FUNC0(fill > 1);
	head->node = FUNC1(geo, node, 0);
	head->height--;
	FUNC3(node, head->mempool);
}