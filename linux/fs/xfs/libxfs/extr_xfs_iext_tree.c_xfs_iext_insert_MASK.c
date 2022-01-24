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
typedef  int /*<<< orphan*/  xfs_fileoff_t ;
struct xfs_inode {int dummy; } ;
struct xfs_ifork {int if_height; int if_bytes; } ;
struct xfs_iext_rec {int dummy; } ;
struct xfs_iext_leaf {int /*<<< orphan*/ * recs; } ;
struct xfs_iext_cursor {int pos; struct xfs_iext_leaf* leaf; } ;
struct xfs_bmbt_irec {int /*<<< orphan*/  br_startoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RECS_PER_LEAF ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_iext_cursor*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*,struct xfs_iext_cursor*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_ifork*,struct xfs_iext_cursor*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_ifork*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_ifork*,int /*<<< orphan*/ ,struct xfs_iext_leaf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_iext_leaf*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xfs_ifork*,struct xfs_iext_leaf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_ifork*,struct xfs_iext_cursor*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct xfs_bmbt_irec*) ; 
 struct xfs_iext_leaf* FUNC11 (struct xfs_iext_cursor*,int*) ; 
 struct xfs_ifork* FUNC12 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_ifork*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_iext_leaf*) ; 

void
FUNC14(
	struct xfs_inode	*ip,
	struct xfs_iext_cursor	*cur,
	struct xfs_bmbt_irec	*irec,
	int			state)
{
	struct xfs_ifork	*ifp = FUNC12(ip, state);
	xfs_fileoff_t		offset = irec->br_startoff;
	struct xfs_iext_leaf	*new = NULL;
	int			nr_entries, i;

	FUNC4(ifp);

	if (ifp->if_height == 0)
		FUNC3(ifp, cur);
	else if (ifp->if_height == 1)
		FUNC8(ifp, cur);

	nr_entries = FUNC7(ifp, cur->leaf, cur->pos);
	FUNC0(nr_entries <= RECS_PER_LEAF);
	FUNC0(cur->pos >= nr_entries ||
	       FUNC9(FUNC1(cur), irec->br_startoff) != 0);

	if (nr_entries == RECS_PER_LEAF)
		new = FUNC11(cur, &nr_entries);

	/*
	 * Update the pointers in higher levels if the first entry changes
	 * in an existing node.
	 */
	if (cur->leaf != new && cur->pos == 0 && nr_entries > 0) {
		FUNC13(ifp, FUNC6(cur->leaf, 0),
				offset, 1, cur->leaf);
	}

	for (i = nr_entries; i > cur->pos; i--)
		cur->leaf->recs[i] = cur->leaf->recs[i - 1];
	FUNC10(FUNC1(cur), irec);
	ifp->if_bytes += sizeof(struct xfs_iext_rec);

	FUNC2(ip, cur, state, _RET_IP_);

	if (new)
		FUNC5(ifp, FUNC6(new, 0), new, 2);
}