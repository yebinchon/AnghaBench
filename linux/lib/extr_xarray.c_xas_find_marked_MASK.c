#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xa_mark_t ;
struct xa_state {int xa_index; int xa_offset; TYPE_1__* xa_node; int /*<<< orphan*/  xa; } ;
struct TYPE_6__ {int shift; unsigned int offset; } ;

/* Variables and functions */
 TYPE_1__* XAS_RESTART ; 
 unsigned int XA_CHUNK_SIZE ; 
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (struct xa_state*) ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,unsigned int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC9 (void*) ; 
 unsigned int FUNC10 (void*) ; 
 scalar_t__ FUNC11 (struct xa_state*) ; 
 unsigned int FUNC12 (struct xa_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct xa_state*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct xa_state*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 

void *FUNC16(struct xa_state *xas, unsigned long max, xa_mark_t mark)
{
	bool advance = true;
	unsigned int offset;
	void *entry;

	if (FUNC11(xas))
		return NULL;

	if (!xas->xa_node) {
		xas->xa_index = 1;
		goto out;
	} else if (FUNC15(xas->xa_node)) {
		advance = false;
		entry = FUNC4(xas->xa);
		xas->xa_node = NULL;
		if (xas->xa_index > FUNC0(entry))
			goto out;
		if (!FUNC5(entry)) {
			if (FUNC7(xas->xa, mark))
				return entry;
			xas->xa_index = 1;
			goto out;
		}
		xas->xa_node = FUNC9(entry);
		xas->xa_offset = xas->xa_index >> xas->xa_node->shift;
	}

	while (xas->xa_index <= max) {
		if (FUNC2(xas->xa_offset == XA_CHUNK_SIZE)) {
			xas->xa_offset = xas->xa_node->offset + 1;
			xas->xa_node = FUNC8(xas->xa, xas->xa_node);
			if (!xas->xa_node)
				break;
			advance = false;
			continue;
		}

		if (!advance) {
			entry = FUNC3(xas->xa, xas->xa_node, xas->xa_offset);
			if (FUNC6(entry)) {
				xas->xa_offset = FUNC10(entry);
				FUNC13(xas, xas->xa_offset);
			}
		}

		offset = FUNC12(xas, advance, mark);
		if (offset > xas->xa_offset) {
			advance = false;
			FUNC13(xas, offset);
			/* Mind the wrap */
			if ((xas->xa_index - 1) >= max)
				goto max;
			xas->xa_offset = offset;
			if (offset == XA_CHUNK_SIZE)
				continue;
		}

		entry = FUNC3(xas->xa, xas->xa_node, xas->xa_offset);
		if (!FUNC5(entry))
			return entry;
		xas->xa_node = FUNC9(entry);
		FUNC14(xas);
	}

out:
	if (xas->xa_index > max)
		goto max;
	return FUNC1(xas);
max:
	xas->xa_node = XAS_RESTART;
	return NULL;
}