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
struct radix_tree_root {int dummy; } ;

/* Variables and functions */
 int N ; 
#define  NODE_ABSENT 130 
#define  NODE_PRESENT 129 
#define  NODE_TAGGED 128 
 int THRASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct radix_tree_root*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radix_tree_root*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct radix_tree_root*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct radix_tree_root*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct radix_tree_root*,unsigned long) ; 
 scalar_t__ FUNC6 (struct radix_tree_root*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct radix_tree_root*,unsigned long,int) ; 
 int FUNC8 (struct radix_tree_root*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radix_tree_root*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct radix_tree_root *tree, char *thrash_state, int tag)
{
	int insert_chunk;
	int delete_chunk;
	int tag_chunk;
	int untag_chunk;
	int total_tagged = 0;
	int total_present = 0;

	for (insert_chunk = 1; insert_chunk < THRASH_SIZE; insert_chunk *= N)
	for (delete_chunk = 1; delete_chunk < THRASH_SIZE; delete_chunk *= N)
	for (tag_chunk = 1; tag_chunk < THRASH_SIZE; tag_chunk *= N)
	for (untag_chunk = 1; untag_chunk < THRASH_SIZE; untag_chunk *= N) {
		int i;
		unsigned long index;
		int nr_inserted = 0;
		int nr_deleted = 0;
		int nr_tagged = 0;
		int nr_untagged = 0;
		int actual_total_tagged;
		int actual_total_present;

		for (i = 0; i < insert_chunk; i++) {
			index = FUNC11() % THRASH_SIZE;
			if (thrash_state[index] != NODE_ABSENT)
				continue;
			FUNC2(tree, index);
			FUNC5(tree, index);
			FUNC0(thrash_state[index] != NODE_PRESENT);
			thrash_state[index] = NODE_PRESENT;
			nr_inserted++;
			total_present++;
		}

		for (i = 0; i < delete_chunk; i++) {
			index = FUNC11() % THRASH_SIZE;
			if (thrash_state[index] == NODE_ABSENT)
				continue;
			FUNC3(tree, index);
			if (FUNC8(tree, index, tag)) {
				FUNC0(thrash_state[index] == NODE_TAGGED);
				total_tagged--;
			} else {
				FUNC0(thrash_state[index] == NODE_PRESENT);
			}
			FUNC4(tree, index);
			FUNC0(thrash_state[index] != NODE_ABSENT);
			thrash_state[index] = NODE_ABSENT;
			nr_deleted++;
			total_present--;
		}

		for (i = 0; i < tag_chunk; i++) {
			index = FUNC11() % THRASH_SIZE;
			if (thrash_state[index] != NODE_PRESENT) {
				if (FUNC6(tree, index))
					FUNC0(FUNC8(tree, index, tag));
				continue;
			}
			FUNC9(tree, index, tag);
			FUNC9(tree, index, tag);
			FUNC0(thrash_state[index] != NODE_TAGGED);
			thrash_state[index] = NODE_TAGGED;
			nr_tagged++;
			total_tagged++;
		}

		for (i = 0; i < untag_chunk; i++) {
			index = FUNC11() % THRASH_SIZE;
			if (thrash_state[index] != NODE_TAGGED)
				continue;
			FUNC3(tree, index);
			FUNC0(FUNC8(tree, index, tag));
			FUNC7(tree, index, tag);
			FUNC7(tree, index, tag);
			FUNC0(thrash_state[index] != NODE_PRESENT);
			thrash_state[index] = NODE_PRESENT;
			nr_untagged++;
			total_tagged--;
		}

		actual_total_tagged = 0;
		actual_total_present = 0;
		for (index = 0; index < THRASH_SIZE; index++) {
			switch (thrash_state[index]) {
			case NODE_ABSENT:
				FUNC2(tree, index);
				break;
			case NODE_PRESENT:
				FUNC3(tree, index);
				FUNC0(!FUNC8(tree, index, tag));
				actual_total_present++;
				break;
			case NODE_TAGGED:
				FUNC3(tree, index);
				FUNC0(FUNC8(tree, index, tag));
				actual_total_present++;
				actual_total_tagged++;
				break;
			}
		}

		FUNC1(tree, thrash_state, tag);

		FUNC10(2, "%d(%d) %d(%d) %d(%d) %d(%d) / "
				"%d(%d) present, %d(%d) tagged\n",
			insert_chunk, nr_inserted,
			delete_chunk, nr_deleted,
			tag_chunk, nr_tagged,
			untag_chunk, nr_untagged,
			total_present, actual_total_present,
			total_tagged, actual_total_tagged);
	}
}