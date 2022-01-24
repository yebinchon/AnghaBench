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
struct trie {int dummy; } ;
struct key_vector {int bits; scalar_t__ pos; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct key_vector*,struct key_vector*) ; 
 unsigned long FUNC1 (struct key_vector*) ; 
 struct key_vector* FUNC2 (struct key_vector*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct key_vector*,unsigned long,struct key_vector*) ; 
 struct key_vector* FUNC5 (struct trie*,struct key_vector*,struct key_vector*) ; 
 int /*<<< orphan*/  FUNC6 (struct key_vector*) ; 
 int /*<<< orphan*/  FUNC7 (struct key_vector*,struct key_vector*) ; 
 int /*<<< orphan*/  FUNC8 (struct key_vector*) ; 
 struct key_vector* FUNC9 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static struct key_vector *FUNC10(struct trie *t,
				struct key_vector *oldtnode)
{
	struct key_vector *tn;
	unsigned long i;

	FUNC3("In halve\n");

	tn = FUNC9(oldtnode->key, oldtnode->pos + 1, oldtnode->bits - 1);
	if (!tn)
		goto notnode;

	/* prepare oldtnode to be freed */
	FUNC8(oldtnode);

	/* Assemble all of the pointers in our cluster, in this case that
	 * represents all of the pointers out of our allocated nodes that
	 * point to existing tnodes and the links between our allocated
	 * nodes.
	 */
	for (i = FUNC1(oldtnode); i;) {
		struct key_vector *node1 = FUNC2(oldtnode, --i);
		struct key_vector *node0 = FUNC2(oldtnode, --i);
		struct key_vector *inode;

		/* At least one of the children is empty */
		if (!node1 || !node0) {
			FUNC4(tn, i / 2, node1 ? : node0);
			continue;
		}

		/* Two nonempty children */
		inode = FUNC9(node0->key, oldtnode->pos, 1);
		if (!inode)
			goto nomem;
		FUNC7(tn, inode);

		/* initialize pointers out of node */
		FUNC4(inode, 1, node1);
		FUNC4(inode, 0, node0);
		FUNC0(inode, tn);

		/* link parent to node */
		FUNC4(tn, i / 2, inode);
	}

	/* setup the parent pointers into and out of this node */
	return FUNC5(t, oldtnode, tn);
nomem:
	/* all pointers should be clean so we are done */
	FUNC6(tn);
notnode:
	return NULL;
}