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
typedef  int /*<<< orphan*/  xfs_extlen_t ;
struct xfs_mount {int /*<<< orphan*/  m_alloc_mnr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long long) ; 

xfs_extlen_t
FUNC1(
	struct xfs_mount	*mp,
	unsigned long long	len)
{
	return FUNC0(mp->m_alloc_mnr, len);
}