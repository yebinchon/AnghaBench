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
struct nfs_page {int /*<<< orphan*/  wb_page; int /*<<< orphan*/  wb_flags; } ;
struct nfs_open_context {int /*<<< orphan*/  dentry; } ;
struct nfs_commit_info {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  commit_mutex; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  PG_CLEAN ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_commit_info*,struct inode*) ; 
 struct nfs_open_context* FUNC6 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_page*,struct nfs_commit_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_page*,struct nfs_commit_info*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct nfs_page *req)
{
	if (FUNC9(PG_CLEAN, &req->wb_flags)) {
		struct nfs_open_context *ctx = FUNC6(req);
		struct inode *inode = FUNC1(ctx->dentry);
		struct nfs_commit_info cinfo;

		FUNC5(&cinfo, inode);
		FUNC2(&FUNC0(inode)->commit_mutex);
		if (!FUNC8(req, &cinfo)) {
			FUNC7(req, &cinfo);
		}
		FUNC3(&FUNC0(inode)->commit_mutex);
		FUNC4(req->wb_page);
	}
}