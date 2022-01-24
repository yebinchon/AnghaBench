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
struct xfs_perag {int /*<<< orphan*/  pag_ici_lock; int /*<<< orphan*/  pag_ici_root; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {int /*<<< orphan*/  i_flags_lock; int /*<<< orphan*/  i_ino; struct xfs_mount* i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_ICI_RECLAIM_TAG ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_IRECLAIMABLE ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct xfs_perag* FUNC6 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_perag*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_perag*) ; 

void
FUNC9(
	struct xfs_inode	*ip)
{
	struct xfs_mount	*mp = ip->i_mount;
	struct xfs_perag	*pag;

	pag = FUNC6(mp, FUNC1(mp, ip->i_ino));
	FUNC4(&pag->pag_ici_lock);
	FUNC4(&ip->i_flags_lock);

	FUNC3(&pag->pag_ici_root, FUNC0(mp, ip->i_ino),
			   XFS_ICI_RECLAIM_TAG);
	FUNC8(pag);
	FUNC2(ip, XFS_IRECLAIMABLE);

	FUNC5(&ip->i_flags_lock);
	FUNC5(&pag->pag_ici_lock);
	FUNC7(pag);
}