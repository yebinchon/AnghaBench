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
typedef  scalar_t__ u32 ;
struct nfs_pageio_descriptor {scalar_t__ pg_error; scalar_t__ pg_mirror_count; scalar_t__ pg_mirror_idx; } ;
struct nfs_page {unsigned int wb_pgbase; unsigned int wb_offset; unsigned int wb_bytes; struct nfs_page* wb_this_page; struct nfs_page* wb_head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs_page*) ; 
 scalar_t__ FUNC1 (struct nfs_page*) ; 
 struct nfs_page* FUNC2 (struct nfs_page*,struct nfs_page*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 scalar_t__ FUNC9 (struct nfs_pageio_descriptor*) ; 

int FUNC10(struct nfs_pageio_descriptor *desc,
			   struct nfs_page *req)
{
	u32 midx;
	unsigned int pgbase, offset, bytes;
	struct nfs_page *dupreq, *lastreq;

	pgbase = req->wb_pgbase;
	offset = req->wb_offset;
	bytes = req->wb_bytes;

	FUNC8(desc, req);
	if (desc->pg_error < 0)
		goto out_failed;

	for (midx = 0; midx < desc->pg_mirror_count; midx++) {
		if (midx) {
			FUNC3(req);

			/* find the last request */
			for (lastreq = req->wb_head;
			     lastreq->wb_this_page != req->wb_head;
			     lastreq = lastreq->wb_this_page)
				;

			dupreq = FUNC2(req, lastreq,
					pgbase, offset, bytes);

			FUNC4(req);
			if (FUNC0(dupreq)) {
				desc->pg_error = FUNC1(dupreq);
				goto out_failed;
			}
		} else
			dupreq = req;

		if (FUNC9(desc))
			desc->pg_mirror_idx = midx;
		if (!FUNC5(desc, dupreq))
			goto out_cleanup_subreq;
	}

	return 1;

out_cleanup_subreq:
	if (req != dupreq)
		FUNC6(desc, dupreq);
out_failed:
	FUNC7(desc);
	return 0;
}