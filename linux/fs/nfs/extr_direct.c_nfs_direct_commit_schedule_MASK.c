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
struct nfs_direct_req {int /*<<< orphan*/  inode; } ;
struct nfs_commit_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mds_list ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_direct_req*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfs_commit_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_commit_info*,struct nfs_direct_req*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfs_commit_info*) ; 

__attribute__((used)) static void FUNC5(struct nfs_direct_req *dreq)
{
	int res;
	struct nfs_commit_info cinfo;
	FUNC0(mds_list);

	FUNC3(&cinfo, dreq);
	FUNC4(dreq->inode, &mds_list, &cinfo);
	res = FUNC2(dreq->inode, &mds_list, 0, &cinfo);
	if (res < 0) /* res == -ENOMEM */
		FUNC1(dreq);
}