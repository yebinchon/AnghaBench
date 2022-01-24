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
struct TYPE_2__ {int /*<<< orphan*/  sb_fdblocks; int /*<<< orphan*/  sb_ifree; int /*<<< orphan*/  sb_icount; } ;
struct xfs_mount {TYPE_1__ m_sb; int /*<<< orphan*/  m_fdblocks; int /*<<< orphan*/  m_ifree; int /*<<< orphan*/  m_icount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC1(
	struct xfs_mount	*mp)
{
	FUNC0(&mp->m_icount, mp->m_sb.sb_icount);
	FUNC0(&mp->m_ifree, mp->m_sb.sb_ifree);
	FUNC0(&mp->m_fdblocks, mp->m_sb.sb_fdblocks);
}