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
struct xfs_kobj {int dummy; } ;
struct xfs_mount {struct xfs_error_cfg** m_error_cfg; struct xfs_kobj m_error_kobj; } ;
struct xfs_error_init {char const* name; int retry_timeout; int /*<<< orphan*/  max_retries; } ;
struct xfs_error_cfg {int retry_timeout; struct xfs_kobj kobj; int /*<<< orphan*/  max_retries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MSEC_PER_SEC ; 
 int XFS_ERR_CLASS_MAX ; 
 int XFS_ERR_ERRNO_MAX ; 
 int XFS_ERR_RETRY_FOREVER ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  xfs_error_cfg_ktype ; 
 int /*<<< orphan*/  xfs_error_ktype ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_kobj*) ; 
 int FUNC3 (struct xfs_kobj*,int /*<<< orphan*/ *,struct xfs_kobj*,char const*) ; 

__attribute__((used)) static int
FUNC4(
	struct xfs_mount	*mp,
	int			class,
	const char		*parent_name,
	struct xfs_kobj		*parent_kobj,
	const struct xfs_error_init init[])
{
	struct xfs_error_cfg	*cfg;
	int			error;
	int			i;

	FUNC0(class < XFS_ERR_CLASS_MAX);

	error = FUNC3(parent_kobj, &xfs_error_ktype,
				&mp->m_error_kobj, parent_name);
	if (error)
		return error;

	for (i = 0; i < XFS_ERR_ERRNO_MAX; i++) {
		cfg = &mp->m_error_cfg[class][i];
		error = FUNC3(&cfg->kobj, &xfs_error_cfg_ktype,
					parent_kobj, init[i].name);
		if (error)
			goto out_error;

		cfg->max_retries = init[i].max_retries;
		if (init[i].retry_timeout == XFS_ERR_RETRY_FOREVER)
			cfg->retry_timeout = XFS_ERR_RETRY_FOREVER;
		else
			cfg->retry_timeout = FUNC1(
					init[i].retry_timeout * MSEC_PER_SEC);
	}
	return 0;

out_error:
	/* unwind the entries that succeeded */
	for (i--; i >= 0; i--) {
		cfg = &mp->m_error_cfg[class][i];
		FUNC2(&cfg->kobj);
	}
	FUNC2(parent_kobj);
	return error;
}