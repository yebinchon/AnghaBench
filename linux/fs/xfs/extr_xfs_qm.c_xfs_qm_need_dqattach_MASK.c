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
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct xfs_inode {int /*<<< orphan*/  i_ino; struct xfs_mount* i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,struct xfs_inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(
	struct xfs_inode	*ip)
{
	struct xfs_mount	*mp = ip->i_mount;

	if (!FUNC1(mp))
		return false;
	if (!FUNC0(mp))
		return false;
	if (!FUNC2(mp, ip))
		return false;
	if (FUNC3(&mp->m_sb, ip->i_ino))
		return false;
	return true;
}