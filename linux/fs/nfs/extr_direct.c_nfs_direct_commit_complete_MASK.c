#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nfs_page {scalar_t__ wb_nio; } ;
struct nfs_direct_req {scalar_t__ flags; } ;
struct nfs_commit_info {TYPE_2__* mds; } ;
struct TYPE_6__ {int /*<<< orphan*/  next; } ;
struct TYPE_4__ {int tk_status; } ;
struct nfs_commit_data {TYPE_3__ pages; TYPE_1__ task; struct nfs_direct_req* dreq; } ;
struct TYPE_5__ {int /*<<< orphan*/  rpcs_out; } ;

/* Variables and functions */
 scalar_t__ NFS_ODIRECT_RESCHED_WRITES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (struct nfs_direct_req*,struct nfs_commit_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_direct_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_commit_info*,struct nfs_direct_req*) ; 
 struct nfs_page* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_page*,int /*<<< orphan*/ *,struct nfs_commit_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_page*) ; 

__attribute__((used)) static void FUNC10(struct nfs_commit_data *data)
{
	struct nfs_direct_req *dreq = data->dreq;
	struct nfs_commit_info cinfo;
	struct nfs_page *req;
	int status = data->task.tk_status;

	FUNC4(&cinfo, dreq);
	if (status < 0 || FUNC2(dreq, data))
		dreq->flags = NFS_ODIRECT_RESCHED_WRITES;

	while (!FUNC1(&data->pages)) {
		req = FUNC5(data->pages.next);
		FUNC6(req);
		if (dreq->flags == NFS_ODIRECT_RESCHED_WRITES) {
			/*
			 * Despite the reboot, the write was successful,
			 * so reset wb_nio.
			 */
			req->wb_nio = 0;
			/* Note the rewrite will go through mds */
			FUNC7(req, NULL, &cinfo, 0);
		} else
			FUNC8(req);
		FUNC9(req);
	}

	if (FUNC0(&cinfo.mds->rpcs_out))
		FUNC3(dreq);
}