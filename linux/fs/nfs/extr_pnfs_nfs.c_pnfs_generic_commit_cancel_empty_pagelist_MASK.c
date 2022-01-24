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
struct nfs_commit_info {TYPE_1__* mds; } ;
struct nfs_commit_data {int /*<<< orphan*/  context; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rpcs_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_commit_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC5(struct list_head *pages,
					  struct nfs_commit_data *data,
					  struct nfs_commit_info *cinfo)
{
	if (FUNC2(pages)) {
		if (FUNC1(&cinfo->mds->rpcs_out))
			FUNC4(&cinfo->mds->rpcs_out);
		/* don't call nfs_commitdata_release - it tries to put
		 * the open_context which is not acquired until nfs_init_commit
		 * which has not been called on @data */
		FUNC0(data->context);
		FUNC3(data);
		return true;
	}

	return false;
}