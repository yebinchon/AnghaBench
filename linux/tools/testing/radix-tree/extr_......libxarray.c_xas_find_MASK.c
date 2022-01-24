#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct xa_state {int xa_index; int xa_offset; TYPE_1__* xa_node; int /*<<< orphan*/  xa; } ;
struct TYPE_8__ {scalar_t__ offset; int /*<<< orphan*/  shift; } ;

/* Variables and functions */
 TYPE_1__* XAS_BOUNDS ; 
 int XA_CHUNK_MASK ; 
 scalar_t__ XA_CHUNK_SIZE ; 
 void* FUNC0 (struct xa_state*) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct xa_state*) ; 
 scalar_t__ FUNC8 (struct xa_state*) ; 
 void* FUNC9 (struct xa_state*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 

void *FUNC12(struct xa_state *xas, unsigned long max)
{
	void *entry;

	if (FUNC8(xas))
		return NULL;

	if (!xas->xa_node) {
		xas->xa_index = 1;
		return FUNC0(xas);
	} else if (FUNC11(xas->xa_node)) {
		entry = FUNC9(xas);
		if (entry || FUNC10(xas->xa_node))
			return entry;
	} else if (!xas->xa_node->shift &&
		    xas->xa_offset != (xas->xa_index & XA_CHUNK_MASK)) {
		xas->xa_offset = ((xas->xa_index - 1) & XA_CHUNK_MASK) + 1;
	}

	FUNC7(xas);

	while (xas->xa_node && (xas->xa_index <= max)) {
		if (FUNC1(xas->xa_offset == XA_CHUNK_SIZE)) {
			xas->xa_offset = xas->xa_node->offset + 1;
			xas->xa_node = FUNC5(xas->xa, xas->xa_node);
			continue;
		}

		entry = FUNC2(xas->xa, xas->xa_node, xas->xa_offset);
		if (FUNC3(entry)) {
			xas->xa_node = FUNC6(entry);
			xas->xa_offset = 0;
			continue;
		}
		if (entry && !FUNC4(entry))
			return entry;

		FUNC7(xas);
	}

	if (!xas->xa_node)
		xas->xa_node = XAS_BOUNDS;
	return NULL;
}