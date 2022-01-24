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
struct xfs_error_cfg {scalar_t__ retry_timeout; } ;
struct kobject {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int MSEC_PER_SEC ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ XFS_ERR_RETRY_FOREVER ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct xfs_error_cfg* FUNC2 (struct kobject*) ; 

__attribute__((used)) static ssize_t
FUNC3(
	struct kobject	*kobject,
	char		*buf)
{
	int		timeout;
	struct xfs_error_cfg *cfg = FUNC2(kobject);

	if (cfg->retry_timeout == XFS_ERR_RETRY_FOREVER)
		timeout = -1;
	else
		timeout = FUNC0(cfg->retry_timeout) / MSEC_PER_SEC;

	return FUNC1(buf, PAGE_SIZE, "%d\n", timeout);
}