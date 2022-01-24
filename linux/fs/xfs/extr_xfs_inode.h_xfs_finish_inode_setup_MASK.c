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
struct xfs_inode {int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_inode*) ; 
 int /*<<< orphan*/  XFS_INEW ; 
 int /*<<< orphan*/  __XFS_INEW_BIT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct xfs_inode *ip)
{
	FUNC4(ip, XFS_INEW);
	FUNC1();
	FUNC2(FUNC0(ip));
	FUNC3(&ip->i_flags, __XFS_INEW_BIT);
}