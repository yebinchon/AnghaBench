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
struct nfs_page {int /*<<< orphan*/  wb_flags; } ;
struct nfs_commit_info {TYPE_1__* mds; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ncommit; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_CLEAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_page*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(struct nfs_page *req, struct list_head *dst,
			    struct nfs_commit_info *cinfo)
{
	FUNC2(PG_CLEAN, &req->wb_flags);
	FUNC1(req, dst);
	FUNC0(&cinfo->mds->ncommit);
}