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
typedef  size_t u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct list_head {int dummy; } ;
struct pnfs_commit_bucket {int /*<<< orphan*/ * wlseg; struct list_head written; } ;
struct nfs_page {int /*<<< orphan*/  wb_page; int /*<<< orphan*/  wb_flags; } ;
struct nfs_commit_info {int /*<<< orphan*/  inode; TYPE_2__* ds; TYPE_1__* completion_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  commit_mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  nwritten; struct pnfs_commit_bucket* buckets; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* resched_write ) (struct nfs_commit_info*,struct nfs_page*) ;} ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_COMMIT_TO_DS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nfs_commit_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_page*,struct list_head*,struct nfs_commit_info*) ; 
 int /*<<< orphan*/ * FUNC7 (struct pnfs_layout_segment*) ; 
 int /*<<< orphan*/  FUNC8 (struct pnfs_layout_segment*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_commit_info*,struct nfs_page*) ; 

void
FUNC11(struct nfs_page *req,
				struct pnfs_layout_segment *lseg,
				struct nfs_commit_info *cinfo,
				u32 ds_commit_idx)
{
	struct list_head *list;
	struct pnfs_commit_bucket *buckets;

	FUNC3(&FUNC0(cinfo->inode)->commit_mutex);
	buckets = cinfo->ds->buckets;
	list = &buckets[ds_commit_idx].written;
	if (FUNC2(list)) {
		if (!FUNC8(lseg)) {
			FUNC4(&FUNC0(cinfo->inode)->commit_mutex);
			cinfo->completion_ops->resched_write(cinfo, req);
			return;
		}
		/* Non-empty buckets hold a reference on the lseg.  That ref
		 * is normally transferred to the COMMIT call and released
		 * there.  It could also be released if the last req is pulled
		 * off due to a rewrite, in which case it will be done in
		 * pnfs_common_clear_request_commit
		 */
		FUNC1(buckets[ds_commit_idx].wlseg != NULL);
		buckets[ds_commit_idx].wlseg = FUNC7(lseg);
	}
	FUNC9(PG_COMMIT_TO_DS, &req->wb_flags);
	cinfo->ds->nwritten++;

	FUNC6(req, list, cinfo);
	FUNC4(&FUNC0(cinfo->inode)->commit_mutex);
	FUNC5(req->wb_page, cinfo);
}