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
struct nfs_server {int /*<<< orphan*/  writeback; } ;
struct nfs_page {int /*<<< orphan*/  wb_page; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 scalar_t__ NFS_CONGESTION_OFF_THRESH ; 
 struct nfs_server* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  PG_WB_END ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct nfs_page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_page*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct nfs_page *req)
{
	struct inode *inode = FUNC7(req->wb_page)->host;
	struct nfs_server *nfss = FUNC0(inode);
	bool is_done;

	is_done = FUNC5(req, PG_WB_END);
	FUNC6(req);
	if (!is_done)
		return;

	FUNC3(req->wb_page);
	if (FUNC1(&nfss->writeback) < NFS_CONGESTION_OFF_THRESH)
		FUNC2(FUNC4(inode), BLK_RW_ASYNC);
}