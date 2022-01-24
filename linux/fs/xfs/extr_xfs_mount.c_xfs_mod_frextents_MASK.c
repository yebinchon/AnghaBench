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
struct TYPE_2__ {scalar_t__ sb_frextents; } ;
struct xfs_mount {int /*<<< orphan*/  m_sb_lock; TYPE_1__ m_sb; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(
	struct xfs_mount	*mp,
	int64_t			delta)
{
	int64_t			lcounter;
	int			ret = 0;

	FUNC0(&mp->m_sb_lock);
	lcounter = mp->m_sb.sb_frextents + delta;
	if (lcounter < 0)
		ret = -ENOSPC;
	else
		mp->m_sb.sb_frextents = lcounter;
	FUNC1(&mp->m_sb_lock);
	return ret;
}