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
struct xfs_mount {scalar_t__ m_rtdev_targp; scalar_t__ m_logdev_targp; scalar_t__ m_ddev_targp; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*,char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

int
FUNC2(
	struct xfs_mount	*mp,
	char			*message)
{
	if (FUNC1(mp->m_ddev_targp) ||
	    FUNC1(mp->m_logdev_targp) ||
	    (mp->m_rtdev_targp && FUNC1(mp->m_rtdev_targp))) {
		FUNC0(mp, "%s required on read-only device.", message);
		FUNC0(mp, "write access unavailable, cannot proceed.");
		return -EROFS;
	}
	return 0;
}