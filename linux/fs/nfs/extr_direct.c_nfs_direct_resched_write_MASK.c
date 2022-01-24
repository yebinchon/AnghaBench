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
struct nfs_page {int dummy; } ;
struct nfs_direct_req {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct nfs_commit_info {struct nfs_direct_req* dreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_ODIRECT_RESCHED_WRITES ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_page*,int /*<<< orphan*/ *,struct nfs_commit_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nfs_commit_info *cinfo,
		struct nfs_page *req)
{
	struct nfs_direct_req *dreq = cinfo->dreq;

	FUNC1(&dreq->lock);
	dreq->flags = NFS_ODIRECT_RESCHED_WRITES;
	FUNC2(&dreq->lock);
	FUNC0(req, NULL, cinfo, 0);
}