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
struct xfs_trans {int /*<<< orphan*/  t_mountp; } ;
struct xfs_inode {int /*<<< orphan*/  i_ino; } ;
struct xfs_bmbt_irec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_RMAP_MAP ; 
 int /*<<< orphan*/  XFS_RMAP_MAP_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_bmbt_irec*) ; 
 scalar_t__ FUNC1 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void
FUNC3(
	struct xfs_trans	*tp,
	struct xfs_inode	*ip,
	int			whichfork,
	struct xfs_bmbt_irec	*PREV)
{
	if (!FUNC2(tp->t_mountp, whichfork))
		return;

	FUNC0(tp, FUNC1(ip) ?
			XFS_RMAP_MAP_SHARED : XFS_RMAP_MAP, ip->i_ino,
			whichfork, PREV);
}