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
struct btree_geo {int no_pairs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btree_geo*,unsigned long*,int) ; 
 unsigned long* FUNC1 (struct btree_geo*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC3(struct btree_head *head, struct btree_geo *geo,
			       unsigned long *node, unsigned long opaque,
			       void (*func)(void *elem, unsigned long opaque,
					    unsigned long *key, size_t index,
					    void *func2),
			       void *func2, int reap, int height, size_t count)
{
	int i;
	unsigned long *child;

	for (i = 0; i < geo->no_pairs; i++) {
		child = FUNC1(geo, node, i);
		if (!child)
			break;
		if (height > 1)
			count = FUNC3(head, geo, child, opaque,
					func, func2, reap, height - 1, count);
		else
			func(child, opaque, FUNC0(geo, node, i), count++,
					func2);
	}
	if (reap)
		FUNC2(node, head->mempool);
	return count;
}