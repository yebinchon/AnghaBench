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
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; } ;
struct nfs_pgio_header {unsigned long good_bytes; int /*<<< orphan*/  (* release ) (struct nfs_pgio_header*) ;TYPE_1__ pages; int /*<<< orphan*/  flags; struct nfs_direct_req* dreq; } ;
struct nfs_page {scalar_t__ wb_bytes; struct page* wb_page; } ;
struct nfs_direct_req {scalar_t__ flags; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
 scalar_t__ NFS_ODIRECT_SHOULD_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_direct_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_direct_req*,struct nfs_pgio_header*) ; 
 struct nfs_page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_page*) ; 
 scalar_t__ FUNC7 (struct nfs_direct_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_pgio_header*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct nfs_pgio_header *hdr)
{
	unsigned long bytes = 0;
	struct nfs_direct_req *dreq = hdr->dreq;

	FUNC9(&dreq->lock);
	if (FUNC12(NFS_IOHDR_REDO, &hdr->flags)) {
		FUNC10(&dreq->lock);
		goto out_put;
	}

	FUNC3(dreq, hdr);
	FUNC10(&dreq->lock);

	while (!FUNC1(&hdr->pages)) {
		struct nfs_page *req = FUNC4(hdr->pages.next);
		struct page *page = req->wb_page;

		if (!FUNC0(page) && bytes < hdr->good_bytes &&
		    (dreq->flags == NFS_ODIRECT_SHOULD_DIRTY))
			FUNC8(page);
		bytes += req->wb_bytes;
		FUNC5(req);
		FUNC6(req);
	}
out_put:
	if (FUNC7(dreq))
		FUNC2(dreq);
	hdr->release(hdr);
}