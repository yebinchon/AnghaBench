#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ sb_rblocks; } ;
struct TYPE_6__ {TYPE_1__ m_sb; } ;
typedef  TYPE_2__ xfs_mount_t ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 

__attribute__((used)) static inline int		/* error */
FUNC1(
	xfs_mount_t	*mp)	/* file system mount structure */
{
	if (mp->m_sb.sb_rblocks == 0)
		return 0;

	FUNC0(mp, "Not built with CONFIG_XFS_RT");
	return -ENOSYS;
}