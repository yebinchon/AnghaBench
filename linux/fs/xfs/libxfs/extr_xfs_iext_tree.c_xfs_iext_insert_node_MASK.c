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
typedef  int /*<<< orphan*/  uint64_t ;
struct xfs_ifork {int if_height; } ;
struct xfs_iext_node {int /*<<< orphan*/ * keys; void** ptrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int KEYS_PER_NODE ; 
 struct xfs_iext_node* FUNC1 (struct xfs_ifork*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_ifork*) ; 
 scalar_t__ FUNC3 (struct xfs_iext_node*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xfs_iext_node*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xfs_iext_node*,int) ; 
 struct xfs_iext_node* FUNC6 (struct xfs_iext_node**,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_ifork*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_iext_node*) ; 

__attribute__((used)) static void
FUNC8(
	struct xfs_ifork	*ifp,
	uint64_t		offset,
	void			*ptr,
	int			level)
{
	struct xfs_iext_node	*node, *new;
	int			i, pos, nr_entries;

again:
	if (ifp->if_height < level)
		FUNC2(ifp);

	new = NULL;
	node = FUNC1(ifp, offset, level);
	pos = FUNC4(node, offset);
	nr_entries = FUNC5(node, pos);

	FUNC0(pos >= nr_entries || FUNC3(node, pos, offset) != 0);
	FUNC0(nr_entries <= KEYS_PER_NODE);

	if (nr_entries == KEYS_PER_NODE)
		new = FUNC6(&node, &pos, &nr_entries);

	/*
	 * Update the pointers in higher levels if the first entry changes
	 * in an existing node.
	 */
	if (node != new && pos == 0 && nr_entries > 0)
		FUNC7(ifp, node->keys[0], offset, level, node);

	for (i = nr_entries; i > pos; i--) {
		node->keys[i] = node->keys[i - 1];
		node->ptrs[i] = node->ptrs[i - 1];
	}
	node->keys[pos] = offset;
	node->ptrs[pos] = ptr;

	if (new) {
		offset = new->keys[0];
		ptr = new;
		level++;
		goto again;
	}
}