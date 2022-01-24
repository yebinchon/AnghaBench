#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xa_state {int xa_index; int /*<<< orphan*/ * xa_node; int /*<<< orphan*/  xa; } ;
struct TYPE_2__ {int shift; } ;

/* Variables and functions */
 int XA_CHUNK_MASK ; 
 void* FUNC0 (struct xa_state*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 TYPE_1__* FUNC3 (void*) ; 
 scalar_t__ FUNC4 (struct xa_state*) ; 
 void* FUNC5 (struct xa_state*) ; 
 scalar_t__ FUNC6 (struct xa_state*) ; 

__attribute__((used)) static void *FUNC7(struct xa_state *xas)
{
	void *entry;

	if (FUNC6(xas))
		return FUNC5(xas);
	if (FUNC4(xas))
		return NULL;

	entry = FUNC1(xas->xa);
	if (!FUNC2(entry)) {
		if (xas->xa_index)
			return FUNC0(xas);
	} else {
		if ((xas->xa_index >> FUNC3(entry)->shift) > XA_CHUNK_MASK)
			return FUNC0(xas);
	}

	xas->xa_node = NULL;
	return entry;
}