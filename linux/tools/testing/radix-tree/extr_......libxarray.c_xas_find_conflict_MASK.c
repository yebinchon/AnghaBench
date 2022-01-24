#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xa_state {scalar_t__ xa_shift; int xa_offset; int xa_sibs; TYPE_1__* xa_node; int /*<<< orphan*/  xa; } ;
struct xa_node {int dummy; } ;
struct TYPE_5__ {scalar_t__ shift; int offset; } ;

/* Variables and functions */
 int XA_CHUNK_MASK ; 
 void* FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC4 (void*) ; 
 void* FUNC5 (struct xa_state*,struct xa_node*) ; 
 scalar_t__ FUNC6 (struct xa_state*) ; 
 void* FUNC7 (struct xa_state*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

void *FUNC9(struct xa_state *xas)
{
	void *curr;

	if (FUNC6(xas))
		return NULL;

	if (!xas->xa_node)
		return NULL;

	if (FUNC8(xas->xa_node)) {
		curr = FUNC7(xas);
		if (!curr)
			return NULL;
		while (FUNC1(curr)) {
			struct xa_node *node = FUNC4(curr);
			curr = FUNC5(xas, node);
		}
		if (curr)
			return curr;
	}

	if (xas->xa_node->shift > xas->xa_shift)
		return NULL;

	for (;;) {
		if (xas->xa_node->shift == xas->xa_shift) {
			if ((xas->xa_offset & xas->xa_sibs) == xas->xa_sibs)
				break;
		} else if (xas->xa_offset == XA_CHUNK_MASK) {
			xas->xa_offset = xas->xa_node->offset;
			xas->xa_node = FUNC3(xas->xa, xas->xa_node);
			if (!xas->xa_node)
				break;
			continue;
		}
		curr = FUNC0(xas->xa, xas->xa_node, ++xas->xa_offset);
		if (FUNC2(curr))
			continue;
		while (FUNC1(curr)) {
			xas->xa_node = FUNC4(curr);
			xas->xa_offset = 0;
			curr = FUNC0(xas->xa, xas->xa_node, 0);
		}
		if (curr)
			return curr;
	}
	xas->xa_offset -= xas->xa_sibs;
	return NULL;
}