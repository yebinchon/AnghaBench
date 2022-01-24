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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  NODESIZE ; 
 scalar_t__ FUNC0 (unsigned long*) ; 
 unsigned long* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long *FUNC3(struct btree_head *head, gfp_t gfp)
{
	unsigned long *node;

	node = FUNC1(head->mempool, gfp);
	if (FUNC0(node))
		FUNC2(node, 0, NODESIZE);
	return node;
}