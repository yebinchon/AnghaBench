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
typedef  int /*<<< orphan*/  xfs_fileoff_t ;
struct xfs_inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * if_root; } ;
struct xfs_ifork {int if_height; int if_bytes; TYPE_1__ if_u1; } ;
struct xfs_iext_rec {int dummy; } ;
struct xfs_iext_leaf {struct xfs_iext_leaf* next; int /*<<< orphan*/ * recs; } ;
struct xfs_iext_cursor {int pos; struct xfs_iext_leaf* leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RECS_PER_LEAF ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_inode*,struct xfs_iext_cursor*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_ifork*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_ifork*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_iext_leaf*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xfs_ifork*,struct xfs_iext_leaf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_ifork*,struct xfs_iext_cursor*,struct xfs_iext_leaf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct xfs_ifork* FUNC8 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_ifork*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_iext_leaf*) ; 
 int FUNC10 (struct xfs_ifork*,struct xfs_iext_cursor*) ; 

void
FUNC11(
	struct xfs_inode	*ip,
	struct xfs_iext_cursor	*cur,
	int			state)
{
	struct xfs_ifork	*ifp = FUNC8(ip, state);
	struct xfs_iext_leaf	*leaf = cur->leaf;
	xfs_fileoff_t		offset = FUNC4(leaf, 0);
	int			i, nr_entries;

	FUNC1(ip, cur, state, _RET_IP_);

	FUNC0(ifp->if_height > 0);
	FUNC0(ifp->if_u1.if_root != NULL);
	FUNC0(FUNC10(ifp, cur));

	FUNC3(ifp);

	nr_entries = FUNC5(ifp, leaf, cur->pos) - 1;
	for (i = cur->pos; i < nr_entries; i++)
		leaf->recs[i] = leaf->recs[i + 1];
	FUNC7(&leaf->recs[nr_entries]);
	ifp->if_bytes -= sizeof(struct xfs_iext_rec);

	if (cur->pos == 0 && nr_entries > 0) {
		FUNC9(ifp, offset, FUNC4(leaf, 0), 1,
				leaf);
		offset = FUNC4(leaf, 0);
	} else if (cur->pos == nr_entries) {
		if (ifp->if_height > 1 && leaf->next)
			cur->leaf = leaf->next;
		else
			cur->leaf = NULL;
		cur->pos = 0;
	}

	if (nr_entries >= RECS_PER_LEAF / 2)
		return;

	if (ifp->if_height > 1)
		FUNC6(ifp, cur, leaf, offset, nr_entries);
	else if (nr_entries == 0)
		FUNC2(ifp);
}