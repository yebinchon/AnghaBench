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
struct xa_state {unsigned int xa_offset; struct xa_node* xa_node; scalar_t__ xa_index; int /*<<< orphan*/  xa; } ;
struct xa_node {unsigned int shift; } ;

/* Variables and functions */
 struct xa_node* XAS_RESTART ; 
 unsigned int XA_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct xa_node*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct xa_state*) ; 

void FUNC3(struct xa_state *xas)
{
	struct xa_node *node = xas->xa_node;

	if (FUNC2(xas))
		return;

	if (node) {
		unsigned int offset = xas->xa_offset;
		while (++offset < XA_CHUNK_SIZE) {
			if (!FUNC1(FUNC0(xas->xa, node, offset)))
				break;
		}
		xas->xa_index += (offset - xas->xa_offset) << node->shift;
	} else {
		xas->xa_index++;
	}
	xas->xa_node = XAS_RESTART;
}