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
typedef  int /*<<< orphan*/  u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs_page {int /*<<< orphan*/  wb_page; } ;
struct nfs_commit_info {int /*<<< orphan*/  dreq; } ;
struct list_head {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfs_page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*,struct pnfs_layout_segment*,struct nfs_commit_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 

void FUNC6(struct list_head *page_list,
		      struct pnfs_layout_segment *lseg,
		      struct nfs_commit_info *cinfo,
		      u32 ds_commit_idx)
{
	struct nfs_page *req;

	while (!FUNC0(page_list)) {
		req = FUNC2(page_list->next);
		FUNC3(req);
		FUNC4(req, lseg, cinfo, ds_commit_idx);
		if (!cinfo->dreq)
			FUNC1(req->wb_page);
		FUNC5(req);
	}
}