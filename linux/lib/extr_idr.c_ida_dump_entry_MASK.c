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
struct xa_node {unsigned int shift; void** slots; } ;
struct ida_bitmap {int /*<<< orphan*/ * bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_LONG ; 
 unsigned long IDA_BITMAP_BITS ; 
 unsigned long IDA_BITMAP_LONGS ; 
 unsigned int IDA_CHUNK_SHIFT ; 
 unsigned int XA_CHUNK_SHIFT ; 
 unsigned long XA_CHUNK_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct xa_node*) ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 struct xa_node* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static void FUNC8(void *entry, unsigned long index)
{
	unsigned long i;

	if (!entry)
		return;

	if (FUNC4(entry)) {
		struct xa_node *node = FUNC6(entry);
		unsigned int shift = node->shift + IDA_CHUNK_SHIFT +
			XA_CHUNK_SHIFT;

		FUNC2(index * IDA_BITMAP_BITS, shift);
		FUNC3(node);
		for (i = 0; i < XA_CHUNK_SIZE; i++)
			FUNC8(node->slots[i],
					index | (i << node->shift));
	} else if (FUNC5(entry)) {
		FUNC2(index * IDA_BITMAP_BITS, FUNC0(BITS_PER_LONG));
		FUNC1("value: data %lx [%px]\n", FUNC7(entry), entry);
	} else {
		struct ida_bitmap *bitmap = entry;

		FUNC2(index * IDA_BITMAP_BITS, IDA_CHUNK_SHIFT);
		FUNC1("bitmap: %p data", bitmap);
		for (i = 0; i < IDA_BITMAP_LONGS; i++)
			FUNC1(" %lx", bitmap->bitmap[i]);
		FUNC1("\n");
	}
}