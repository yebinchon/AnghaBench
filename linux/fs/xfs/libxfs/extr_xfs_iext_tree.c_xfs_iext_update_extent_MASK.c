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
struct xfs_inode {int dummy; } ;
struct xfs_ifork {int dummy; } ;
struct xfs_iext_cursor {scalar_t__ pos; int /*<<< orphan*/  leaf; } ;
struct xfs_bmbt_irec {scalar_t__ br_startoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_iext_cursor*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_inode*,struct xfs_iext_cursor*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*,struct xfs_iext_cursor*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_bmbt_irec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_ifork*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct xfs_bmbt_irec*) ; 
 struct xfs_ifork* FUNC6 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_ifork*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 

void
FUNC8(
	struct xfs_inode	*ip,
	int			state,
	struct xfs_iext_cursor	*cur,
	struct xfs_bmbt_irec	*new)
{
	struct xfs_ifork	*ifp = FUNC6(ip, state);

	FUNC4(ifp);

	if (cur->pos == 0) {
		struct xfs_bmbt_irec	old;

		FUNC3(&old, FUNC0(cur));
		if (new->br_startoff != old.br_startoff) {
			FUNC7(ifp, old.br_startoff,
					new->br_startoff, 1, cur->leaf);
		}
	}

	FUNC2(ip, cur, state, _RET_IP_);
	FUNC5(FUNC0(cur), new);
	FUNC1(ip, cur, state, _RET_IP_);
}