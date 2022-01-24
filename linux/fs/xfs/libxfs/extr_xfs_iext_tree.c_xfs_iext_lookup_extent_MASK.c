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
struct xfs_inode {int /*<<< orphan*/  i_mount; } ;
struct xfs_ifork {int if_height; } ;
struct xfs_iext_rec {int dummy; } ;
struct xfs_iext_cursor {scalar_t__ pos; TYPE_1__* leaf; } ;
struct xfs_bmbt_irec {int dummy; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xfs_iext_rec* FUNC1 (struct xfs_iext_cursor*) ; 
 TYPE_1__* FUNC2 (struct xfs_ifork*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_bmbt_irec*,struct xfs_iext_rec*) ; 
 scalar_t__ FUNC4 (struct xfs_ifork*) ; 
 scalar_t__ FUNC5 (struct xfs_iext_rec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct xfs_iext_rec*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_ifork*,struct xfs_iext_cursor*) ; 
 int /*<<< orphan*/  xs_look_exlist ; 

bool
FUNC8(
	struct xfs_inode	*ip,
	struct xfs_ifork	*ifp,
	xfs_fileoff_t		offset,
	struct xfs_iext_cursor	*cur,
	struct xfs_bmbt_irec	*gotp)
{
	FUNC0(ip->i_mount, xs_look_exlist);

	cur->leaf = FUNC2(ifp, offset, 1);
	if (!cur->leaf) {
		cur->pos = 0;
		return false;
	}

	for (cur->pos = 0; cur->pos < FUNC4(ifp); cur->pos++) {
		struct xfs_iext_rec *rec = FUNC1(cur);

		if (FUNC6(rec))
			break;
		if (FUNC5(rec, offset) >= 0)
			goto found;
	}

	/* Try looking in the next node for an entry > offset */
	if (ifp->if_height == 1 || !cur->leaf->next)
		return false;
	cur->leaf = cur->leaf->next;
	cur->pos = 0;
	if (!FUNC7(ifp, cur))
		return false;
found:
	FUNC3(gotp, FUNC1(cur));
	return true;
}