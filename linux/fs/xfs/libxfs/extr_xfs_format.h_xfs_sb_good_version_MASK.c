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
struct xfs_sb {int dummy; } ;

/* Variables and functions */
 scalar_t__ XFS_SB_VERSION_4 ; 
 scalar_t__ XFS_SB_VERSION_5 ; 
 scalar_t__ FUNC0 (struct xfs_sb*) ; 
 int FUNC1 (struct xfs_sb*) ; 

__attribute__((used)) static inline bool FUNC2(struct xfs_sb *sbp)
{
	if (FUNC0(sbp) == XFS_SB_VERSION_5)
		return true;
	if (FUNC0(sbp) == XFS_SB_VERSION_4)
		return FUNC1(sbp);
	return false;
}