#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfs_page {scalar_t__ wb_page; } ;
struct nfs_commit_info {int /*<<< orphan*/  inode; TYPE_1__* mds; } ;
struct TYPE_4__ {int /*<<< orphan*/  commit_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct nfs_commit_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*,int /*<<< orphan*/ *,struct nfs_commit_info*) ; 

void
FUNC5(struct nfs_page *req, struct nfs_commit_info *cinfo)
{
	FUNC1(&FUNC0(cinfo->inode)->commit_mutex);
	FUNC4(req, &cinfo->mds->list, cinfo);
	FUNC2(&FUNC0(cinfo->inode)->commit_mutex);
	if (req->wb_page)
		FUNC3(req->wb_page, cinfo);
}