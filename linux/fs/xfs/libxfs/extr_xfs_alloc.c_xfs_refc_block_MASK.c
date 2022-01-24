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

/* Variables and functions */
 unsigned int FUNC0 (struct xfs_mount*) ; 
 unsigned int FUNC1 (struct xfs_mount*) ; 
 unsigned int FUNC2 (struct xfs_mount*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

unsigned int
FUNC5(
	struct xfs_mount	*mp)
{
	if (FUNC4(&mp->m_sb))
		return FUNC2(mp) + 1;
	if (FUNC3(&mp->m_sb))
		return FUNC0(mp) + 1;
	return FUNC1(mp) + 1;
}