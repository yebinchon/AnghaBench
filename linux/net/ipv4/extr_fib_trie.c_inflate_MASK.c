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
typedef  int t_key ;
struct trie {int dummy; } ;
struct key_vector {int key; unsigned int pos; int bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct key_vector*,struct key_vector*) ; 
 unsigned long FUNC1 (struct key_vector*) ; 
 struct key_vector* FUNC2 (struct key_vector*,unsigned long) ; 
 int FUNC3 (int,struct key_vector*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct key_vector*,int,struct key_vector*) ; 
 struct key_vector* FUNC6 (struct trie*,struct key_vector*,struct key_vector*) ; 
 int /*<<< orphan*/  FUNC7 (struct key_vector*) ; 
 int /*<<< orphan*/  FUNC8 (struct key_vector*,struct key_vector*) ; 
 int /*<<< orphan*/  FUNC9 (struct key_vector*) ; 
 int /*<<< orphan*/  FUNC10 (struct key_vector*,struct key_vector*) ; 
 struct key_vector* FUNC11 (int,unsigned int,int) ; 

__attribute__((used)) static struct key_vector *FUNC12(struct trie *t,
				  struct key_vector *oldtnode)
{
	struct key_vector *tn;
	unsigned long i;
	t_key m;

	FUNC4("In inflate\n");

	tn = FUNC11(oldtnode->key, oldtnode->pos - 1, oldtnode->bits + 1);
	if (!tn)
		goto notnode;

	/* prepare oldtnode to be freed */
	FUNC9(oldtnode);

	/* Assemble all of the pointers in our cluster, in this case that
	 * represents all of the pointers out of our allocated nodes that
	 * point to existing tnodes and the links between our allocated
	 * nodes.
	 */
	for (i = FUNC1(oldtnode), m = 1u << tn->pos; i;) {
		struct key_vector *inode = FUNC2(oldtnode, --i);
		struct key_vector *node0, *node1;
		unsigned long j, k;

		/* An empty child */
		if (!inode)
			continue;

		/* A leaf or an internal node with skipped bits */
		if (!FUNC10(oldtnode, inode)) {
			FUNC5(tn, FUNC3(inode->key, tn), inode);
			continue;
		}

		/* drop the node in the old tnode free list */
		FUNC8(oldtnode, inode);

		/* An internal node with two children */
		if (inode->bits == 1) {
			FUNC5(tn, 2 * i + 1, FUNC2(inode, 1));
			FUNC5(tn, 2 * i, FUNC2(inode, 0));
			continue;
		}

		/* We will replace this node 'inode' with two new
		 * ones, 'node0' and 'node1', each with half of the
		 * original children. The two new nodes will have
		 * a position one bit further down the key and this
		 * means that the "significant" part of their keys
		 * (see the discussion near the top of this file)
		 * will differ by one bit, which will be "0" in
		 * node0's key and "1" in node1's key. Since we are
		 * moving the key position by one step, the bit that
		 * we are moving away from - the bit at position
		 * (tn->pos) - is the one that will differ between
		 * node0 and node1. So... we synthesize that bit in the
		 * two new keys.
		 */
		node1 = FUNC11(inode->key | m, inode->pos, inode->bits - 1);
		if (!node1)
			goto nomem;
		node0 = FUNC11(inode->key, inode->pos, inode->bits - 1);

		FUNC8(tn, node1);
		if (!node0)
			goto nomem;
		FUNC8(tn, node0);

		/* populate child pointers in new nodes */
		for (k = FUNC1(inode), j = k / 2; j;) {
			FUNC5(node1, --j, FUNC2(inode, --k));
			FUNC5(node0, j, FUNC2(inode, j));
			FUNC5(node1, --j, FUNC2(inode, --k));
			FUNC5(node0, j, FUNC2(inode, j));
		}

		/* link new nodes to parent */
		FUNC0(node1, tn);
		FUNC0(node0, tn);

		/* link parent to nodes */
		FUNC5(tn, 2 * i + 1, node1);
		FUNC5(tn, 2 * i, node0);
	}

	/* setup the parent pointers into and out of this node */
	return FUNC6(t, oldtnode, tn);
nomem:
	/* all pointers should be clean so we are done */
	FUNC7(tn);
notnode:
	return NULL;
}