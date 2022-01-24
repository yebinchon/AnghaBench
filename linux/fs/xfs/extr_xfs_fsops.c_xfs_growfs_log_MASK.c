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
struct TYPE_4__ {int /*<<< orphan*/  m_growlock; } ;
typedef  TYPE_1__ xfs_mount_t ;
typedef  int /*<<< orphan*/  xfs_growfs_log_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EPERM ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC4(
	xfs_mount_t		*mp,
	xfs_growfs_log_t	*in)
{
	int error;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;
	if (!FUNC1(&mp->m_growlock))
		return -EWOULDBLOCK;
	error = FUNC3(mp, in);
	FUNC2(&mp->m_growlock);
	return error;
}