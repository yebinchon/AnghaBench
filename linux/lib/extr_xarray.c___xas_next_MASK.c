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
struct xa_state {scalar_t__ xa_offset; TYPE_1__* xa_node; int /*<<< orphan*/  xa; int /*<<< orphan*/  xa_index; } ;
struct TYPE_8__ {scalar_t__ offset; } ;

/* Variables and functions */
 scalar_t__ XA_CHUNK_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC1 (struct xa_state*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 void* FUNC7 (struct xa_state*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct xa_state*) ; 

void *FUNC10(struct xa_state *xas)
{
	void *entry;

	if (!FUNC6(xas->xa_node))
		xas->xa_index++;
	if (!xas->xa_node)
		return FUNC1(xas);
	if (FUNC8(xas->xa_node))
		return FUNC7(xas);

	if (xas->xa_offset != FUNC0(xas->xa_index, xas->xa_node))
		xas->xa_offset++;

	while (xas->xa_offset == XA_CHUNK_SIZE) {
		xas->xa_offset = xas->xa_node->offset + 1;
		xas->xa_node = FUNC4(xas->xa, xas->xa_node);
		if (!xas->xa_node)
			return FUNC1(xas);
	}

	for (;;) {
		entry = FUNC2(xas->xa, xas->xa_node, xas->xa_offset);
		if (!FUNC3(entry))
			return entry;

		xas->xa_node = FUNC5(entry);
		FUNC9(xas);
	}
}