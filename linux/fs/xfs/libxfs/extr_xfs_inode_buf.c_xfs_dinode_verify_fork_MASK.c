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
typedef  int /*<<< orphan*/ * xfs_failaddr_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct xfs_mount {int dummy; } ;
struct xfs_dinode {int /*<<< orphan*/  di_size; int /*<<< orphan*/  di_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAXAEXTNUM ; 
 int /*<<< orphan*/  MAXEXTNUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int XFS_ATTR_FORK ; 
 int XFS_DATA_FORK ; 
 int FUNC1 (struct xfs_dinode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_dinode*,struct xfs_mount*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_dinode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_dinode*,struct xfs_mount*,int) ; 
#define  XFS_DINODE_FMT_BTREE 130 
#define  XFS_DINODE_FMT_EXTENTS 129 
#define  XFS_DINODE_FMT_LOCAL 128 
 int /*<<< orphan*/ * __this_address ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static xfs_failaddr_t
FUNC7(
	struct xfs_dinode	*dip,
	struct xfs_mount	*mp,
	int			whichfork)
{
	uint32_t		di_nextents = FUNC3(dip, whichfork);

	switch (FUNC1(dip, whichfork)) {
	case XFS_DINODE_FMT_LOCAL:
		/*
		 * no local regular files yet
		 */
		if (whichfork == XFS_DATA_FORK) {
			if (FUNC0(FUNC5(dip->di_mode)))
				return __this_address;
			if (FUNC6(dip->di_size) >
					FUNC4(dip, mp, whichfork))
				return __this_address;
		}
		if (di_nextents)
			return __this_address;
		break;
	case XFS_DINODE_FMT_EXTENTS:
		if (di_nextents > FUNC2(dip, mp, whichfork))
			return __this_address;
		break;
	case XFS_DINODE_FMT_BTREE:
		if (whichfork == XFS_ATTR_FORK) {
			if (di_nextents > MAXAEXTNUM)
				return __this_address;
		} else if (di_nextents > MAXEXTNUM) {
			return __this_address;
		}
		break;
	default:
		return __this_address;
	}
	return NULL;
}