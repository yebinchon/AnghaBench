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
typedef  int uint ;
struct xfs_mount {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 scalar_t__ FUNC0 (int) ; 
#define  XFS_DQ_GROUP 130 
#define  XFS_DQ_PROJ 129 
#define  XFS_DQ_USER 128 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*) ; 

__attribute__((used)) static int
FUNC5(
	struct xfs_mount	*mp,
	uint			type)
{
	if (FUNC0(!FUNC3(mp)))
		return -ESRCH;

	switch (type) {
	case XFS_DQ_USER:
		if (!FUNC4(mp))
			return -ESRCH;
		return 0;
	case XFS_DQ_GROUP:
		if (!FUNC1(mp))
			return -ESRCH;
		return 0;
	case XFS_DQ_PROJ:
		if (!FUNC2(mp))
			return -ESRCH;
		return 0;
	default:
		FUNC0(0);
		return -EINVAL;
	}
}