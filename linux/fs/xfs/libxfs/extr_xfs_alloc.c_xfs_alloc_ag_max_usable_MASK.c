#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int sb_agblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;

/* Variables and functions */
 scalar_t__ XFS_ALLOC_AGFL_RESERVE ; 
 unsigned int FUNC0 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

unsigned int
FUNC5(
	struct xfs_mount	*mp)
{
	unsigned int		blocks;

	blocks = FUNC0(mp, FUNC1(mp, 4)); /* ag headers */
	blocks += XFS_ALLOC_AGFL_RESERVE;
	blocks += 3;			/* AGF, AGI btree root blocks */
	if (FUNC2(&mp->m_sb))
		blocks++;		/* finobt root block */
	if (FUNC4(&mp->m_sb))
		blocks++; 		/* rmap root block */
	if (FUNC3(&mp->m_sb))
		blocks++;		/* refcount root block */

	return mp->m_sb.sb_agblocks - blocks;
}