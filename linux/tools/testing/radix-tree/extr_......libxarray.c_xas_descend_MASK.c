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
struct xa_state {unsigned int xa_offset; int /*<<< orphan*/  xa; struct xa_node* xa_node; int /*<<< orphan*/  xa_index; } ;
struct xa_node {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,struct xa_node*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,struct xa_node*,unsigned int) ; 
 scalar_t__ FUNC2 (void*) ; 
 unsigned int FUNC3 (void*) ; 

__attribute__((used)) static void *FUNC4(struct xa_state *xas, struct xa_node *node)
{
	unsigned int offset = FUNC0(xas->xa_index, node);
	void *entry = FUNC1(xas->xa, node, offset);

	xas->xa_node = node;
	if (FUNC2(entry)) {
		offset = FUNC3(entry);
		entry = FUNC1(xas->xa, node, offset);
	}

	xas->xa_offset = offset;
	return entry;
}