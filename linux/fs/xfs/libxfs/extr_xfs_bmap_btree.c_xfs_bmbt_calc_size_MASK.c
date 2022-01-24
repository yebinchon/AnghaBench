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
struct xfs_mount {int /*<<< orphan*/  m_bmap_dmnr; } ;

/* Variables and functions */
 unsigned long long FUNC0 (int /*<<< orphan*/ ,unsigned long long) ; 

unsigned long long
FUNC1(
	struct xfs_mount	*mp,
	unsigned long long	len)
{
	return FUNC0(mp->m_bmap_dmnr, len);
}