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
typedef  int /*<<< orphan*/  xfs_rfsblock_t ;
typedef  int /*<<< orphan*/  xfs_daddr_t ;
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
struct TYPE_2__ {int /*<<< orphan*/  sb_agblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline xfs_agnumber_t
FUNC2(struct xfs_mount *mp, xfs_daddr_t d)
{
	xfs_rfsblock_t ld = FUNC0(mp, d);
	FUNC1(ld, mp->m_sb.sb_agblocks);
	return (xfs_agnumber_t) ld;
}