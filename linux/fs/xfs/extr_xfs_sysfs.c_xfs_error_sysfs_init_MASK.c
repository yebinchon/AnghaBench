#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobject; } ;
struct xfs_mount {TYPE_1__ m_error_kobj; int /*<<< orphan*/  m_error_meta_kobj; int /*<<< orphan*/  m_kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_ERR_METADATA ; 
 int /*<<< orphan*/  fail_at_unmount ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_error_ktype ; 
 int /*<<< orphan*/  xfs_error_meta_init ; 
 int FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

int
FUNC5(
	struct xfs_mount	*mp)
{
	int			error;

	/* .../xfs/<dev>/error/ */
	error = FUNC4(&mp->m_error_kobj, &xfs_error_ktype,
				&mp->m_kobj, "error");
	if (error)
		return error;

	error = FUNC1(&mp->m_error_kobj.kobject,
				  FUNC0(fail_at_unmount));

	if (error)
		goto out_error;

	/* .../xfs/<dev>/error/metadata/ */
	error = FUNC2(mp, XFS_ERR_METADATA,
				"metadata", &mp->m_error_meta_kobj,
				xfs_error_meta_init);
	if (error)
		goto out_error;

	return 0;

out_error:
	FUNC3(&mp->m_error_kobj);
	return error;
}