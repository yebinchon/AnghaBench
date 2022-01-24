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
typedef  int /*<<< orphan*/  xa_mark_t ;
struct xa_state {unsigned int xa_offset; int /*<<< orphan*/  xa; struct xa_node* xa_node; } ;
struct xa_node {unsigned int offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xa_node*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xa_node* FUNC3 (int /*<<< orphan*/ ,struct xa_node*) ; 
 scalar_t__ FUNC4 (struct xa_state const*) ; 

void FUNC5(const struct xa_state *xas, xa_mark_t mark)
{
	struct xa_node *node = xas->xa_node;
	unsigned int offset = xas->xa_offset;

	if (FUNC4(xas))
		return;

	while (node) {
		if (FUNC0(node, offset, mark))
			return;
		offset = node->offset;
		node = FUNC3(xas->xa, node);
	}

	if (!FUNC2(xas->xa, mark))
		FUNC1(xas->xa, mark);
}