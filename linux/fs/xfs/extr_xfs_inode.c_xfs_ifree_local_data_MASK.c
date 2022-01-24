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
struct xfs_ifork {int /*<<< orphan*/  if_bytes; } ;

/* Variables and functions */
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 scalar_t__ FUNC0 (struct xfs_inode*,int) ; 
 struct xfs_ifork* FUNC1 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC3(
	struct xfs_inode	*ip,
	int			whichfork)
{
	struct xfs_ifork	*ifp;

	if (FUNC0(ip, whichfork) != XFS_DINODE_FMT_LOCAL)
		return;

	ifp = FUNC1(ip, whichfork);
	FUNC2(ip, -ifp->if_bytes, whichfork);
}