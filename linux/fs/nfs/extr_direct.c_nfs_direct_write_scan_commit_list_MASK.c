#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nfs_commit_info {int /*<<< orphan*/  inode; TYPE_2__* mds; TYPE_3__* ds; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  commit_mutex; } ;
struct TYPE_9__ {TYPE_1__* pnfs_curr_ld; } ;
struct TYPE_8__ {scalar_t__ nwritten; } ;
struct TYPE_7__ {int /*<<< orphan*/  list; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* recover_commit_reqs ) (struct list_head*,struct nfs_commit_info*) ;} ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*,struct nfs_commit_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct list_head*,struct nfs_commit_info*) ; 

__attribute__((used)) static void
FUNC6(struct inode *inode,
				  struct list_head *list,
				  struct nfs_commit_info *cinfo)
{
	FUNC2(&FUNC0(cinfo->inode)->commit_mutex);
#ifdef CONFIG_NFS_V4_1
	if (cinfo->ds != NULL && cinfo->ds->nwritten != 0)
		NFS_SERVER(inode)->pnfs_curr_ld->recover_commit_reqs(list, cinfo);
#endif
	FUNC4(&cinfo->mds->list, list, cinfo, 0);
	FUNC3(&FUNC0(cinfo->inode)->commit_mutex);
}