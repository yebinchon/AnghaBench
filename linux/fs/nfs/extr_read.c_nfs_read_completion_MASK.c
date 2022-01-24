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
struct page {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  next; } ;
struct nfs_pgio_header {unsigned long good_bytes; int error; int /*<<< orphan*/  (* release ) (struct nfs_pgio_header*) ;int /*<<< orphan*/  flags; TYPE_2__ pages; } ;
struct nfs_page {unsigned long wb_pgbase; unsigned long wb_bytes; struct page* wb_page; } ;
struct TYPE_3__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_EOF ; 
 int /*<<< orphan*/  NFS_IOHDR_ERROR ; 
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct nfs_page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*,int) ; 
 TYPE_1__* FUNC6 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_pgio_header*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct nfs_pgio_header *hdr)
{
	unsigned long bytes = 0;
	int error;

	if (FUNC8(NFS_IOHDR_REDO, &hdr->flags))
		goto out;
	while (!FUNC1(&hdr->pages)) {
		struct nfs_page *req = FUNC2(hdr->pages.next);
		struct page *page = req->wb_page;
		unsigned long start = req->wb_pgbase;
		unsigned long end = req->wb_pgbase + req->wb_bytes;

		if (FUNC8(NFS_IOHDR_EOF, &hdr->flags)) {
			/* note: regions of the page not covered by a
			 * request are zeroed in nfs_readpage_async /
			 * readpage_async_filler */
			if (bytes > hdr->good_bytes) {
				/* nothing in this request was good, so zero
				 * the full extent of the request */
				FUNC10(page, start, end);

			} else if (hdr->good_bytes - bytes < req->wb_bytes) {
				/* part of this request has good bytes, but
				 * not all. zero the bad bytes */
				start += hdr->good_bytes - bytes;
				FUNC0(start < req->wb_pgbase);
				FUNC10(page, start, end);
			}
		}
		error = 0;
		bytes += req->wb_bytes;
		if (FUNC8(NFS_IOHDR_ERROR, &hdr->flags)) {
			if (bytes <= hdr->good_bytes)
				FUNC4(req);
			else {
				error = hdr->error;
				FUNC9(&FUNC6(req)->error, error);
			}
		} else
			FUNC4(req);
		FUNC3(req);
		FUNC5(req, error);
	}
out:
	hdr->release(hdr);
}