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
struct nfs_commit_data {int /*<<< orphan*/  mds_ops; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rpcs_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct list_head*) ; 
 struct nfs_commit_data* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_commit_data*,struct list_head*,int /*<<< orphan*/ *,struct nfs_commit_info*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct nfs_commit_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct inode *inode, struct list_head *head, int how,
		struct nfs_commit_info *cinfo)
{
	struct nfs_commit_data	*data;

	/* another commit raced with us */
	if (FUNC3(head))
		return 0;

	data = FUNC4(true);

	/* Set up the argument struct */
	FUNC5(data, head, NULL, cinfo);
	FUNC2(&cinfo->mds->rpcs_out);
	return FUNC6(FUNC0(inode), data, FUNC1(inode),
				   data->mds_ops, how, 0);
}