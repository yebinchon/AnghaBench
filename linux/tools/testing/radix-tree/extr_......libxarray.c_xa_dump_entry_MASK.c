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
struct xa_node {void** slots; unsigned long shift; } ;

/* Variables and functions */
 unsigned long XA_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,void const*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct xa_node*) ; 
 int /*<<< orphan*/  FUNC3 (void const*) ; 
 scalar_t__ FUNC4 (void const*) ; 
 scalar_t__ FUNC5 (void const*) ; 
 scalar_t__ FUNC6 (void const*) ; 
 scalar_t__ FUNC7 (void const*) ; 
 scalar_t__ FUNC8 (void const*) ; 
 void const* FUNC9 (void const*) ; 
 struct xa_node* FUNC10 (void const*) ; 
 void const* FUNC11 (void const*) ; 
 int /*<<< orphan*/  FUNC12 (void const*) ; 

void FUNC13(const void *entry, unsigned long index, unsigned long shift)
{
	if (!entry)
		return;

	FUNC1(index, shift);

	if (FUNC4(entry)) {
		if (shift == 0) {
			FUNC0("%px\n", entry);
		} else {
			unsigned long i;
			struct xa_node *node = FUNC10(entry);
			FUNC2(node);
			for (i = 0; i < XA_CHUNK_SIZE; i++)
				FUNC13(node->slots[i],
				      index + (i << node->shift), node->shift);
		}
	} else if (FUNC7(entry))
		FUNC0("value %ld (0x%lx) [%px]\n", FUNC12(entry),
						FUNC12(entry), entry);
	else if (!FUNC3(entry))
		FUNC0("%px\n", entry);
	else if (FUNC5(entry))
		FUNC0("retry (%ld)\n", FUNC9(entry));
	else if (FUNC6(entry))
		FUNC0("sibling (slot %ld)\n", FUNC11(entry));
	else if (FUNC8(entry))
		FUNC0("zero (%ld)\n", FUNC9(entry));
	else
		FUNC0("UNKNOWN ENTRY (%px)\n", entry);
}