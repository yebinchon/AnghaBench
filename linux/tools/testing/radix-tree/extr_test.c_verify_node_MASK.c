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
struct radix_tree_node {int** tags; int shift; struct radix_tree_node** slots; } ;

/* Variables and functions */
 int RADIX_TREE_MAP_SIZE ; 
 int RADIX_TREE_MAX_TAGS ; 
 int RADIX_TREE_TAG_LONGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct radix_tree_node* FUNC1 (struct radix_tree_node*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int*) ; 

__attribute__((used)) static int FUNC4(struct radix_tree_node *slot, unsigned int tag,
			int tagged)
{
	int anyset = 0;
	int i;
	int j;

	slot = FUNC1(slot);

	/* Verify consistency at this level */
	for (i = 0; i < RADIX_TREE_TAG_LONGS; i++) {
		if (slot->tags[tag][i]) {
			anyset = 1;
			break;
		}
	}
	if (tagged != anyset) {
		FUNC2("tag: %u, shift %u, tagged: %d, anyset: %d\n",
			tag, slot->shift, tagged, anyset);
		for (j = 0; j < RADIX_TREE_MAX_TAGS; j++) {
			FUNC2("tag %d: ", j);
			for (i = 0; i < RADIX_TREE_TAG_LONGS; i++)
				FUNC2("%016lx ", slot->tags[j][i]);
			FUNC2("\n");
		}
		return 1;
	}
	FUNC0(tagged == anyset);

	/* Go for next level */
	if (slot->shift > 0) {
		for (i = 0; i < RADIX_TREE_MAP_SIZE; i++)
			if (slot->slots[i])
				if (FUNC4(slot->slots[i], tag,
					    !!FUNC3(i, slot->tags[tag]))) {
					FUNC2("Failure at off %d\n", i);
					for (j = 0; j < RADIX_TREE_MAX_TAGS; j++) {
						FUNC2("tag %d: ", j);
						for (i = 0; i < RADIX_TREE_TAG_LONGS; i++)
							FUNC2("%016lx ", slot->tags[j][i]);
						FUNC2("\n");
					}
					return 1;
				}
	}
	return 0;
}