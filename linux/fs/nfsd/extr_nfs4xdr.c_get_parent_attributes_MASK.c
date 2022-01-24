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
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct svc_export {struct path ex_path; } ;
struct kstat {int dummy; } ;
struct TYPE_2__ {scalar_t__ mnt_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_STATX_SYNC_AS_STAT ; 
 int /*<<< orphan*/  STATX_BASIC_STATS ; 
 scalar_t__ FUNC0 (struct path*) ; 
 int /*<<< orphan*/  FUNC1 (struct path*) ; 
 int /*<<< orphan*/  FUNC2 (struct path*) ; 
 int FUNC3 (struct path*,struct kstat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct svc_export *exp, struct kstat *stat)
{
	struct path path = exp->ex_path;
	int err;

	FUNC1(&path);
	while (FUNC0(&path)) {
		if (path.dentry != path.mnt->mnt_root)
			break;
	}
	err = FUNC3(&path, stat, STATX_BASIC_STATS, AT_STATX_SYNC_AS_STAT);
	FUNC2(&path);
	return err;
}