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
struct nfs_pgio_mirror {scalar_t__ pg_recoalesce; } ;
struct nfs_pageio_descriptor {int pg_moreio; scalar_t__ pg_error; } ;
struct nfs_page {unsigned int wb_bytes; unsigned int wb_offset; unsigned int wb_pgbase; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs_page*) ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct nfs_page* FUNC3 (struct nfs_page*,struct nfs_page*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_pageio_descriptor*) ; 
 struct nfs_pgio_mirror* FUNC9 (struct nfs_pageio_descriptor*) ; 

__attribute__((used)) static int FUNC10(struct nfs_pageio_descriptor *desc,
			   struct nfs_page *req)
{
	struct nfs_pgio_mirror *mirror = FUNC9(desc);

	struct nfs_page *subreq;
	unsigned int bytes_left = 0;
	unsigned int offset, pgbase;

	FUNC4(req);

	subreq = req;
	bytes_left = subreq->wb_bytes;
	offset = subreq->wb_offset;
	pgbase = subreq->wb_pgbase;

	do {
		if (!FUNC7(desc, subreq)) {
			/* make sure pg_test call(s) did nothing */
			FUNC2(subreq->wb_bytes != bytes_left);
			FUNC2(subreq->wb_offset != offset);
			FUNC2(subreq->wb_pgbase != pgbase);

			FUNC5(req);
			desc->pg_moreio = 1;
			FUNC8(desc);
			if (desc->pg_error < 0 || mirror->pg_recoalesce)
				goto out_cleanup_subreq;
			/* retry add_request for this subreq */
			FUNC4(req);
			continue;
		}

		/* check for buggy pg_test call(s) */
		FUNC2(subreq->wb_bytes + subreq->wb_pgbase > PAGE_SIZE);
		FUNC2(subreq->wb_bytes > bytes_left);
		FUNC2(subreq->wb_bytes == 0);

		bytes_left -= subreq->wb_bytes;
		offset += subreq->wb_bytes;
		pgbase += subreq->wb_bytes;

		if (bytes_left) {
			subreq = FUNC3(req, subreq, pgbase,
					offset, bytes_left);
			if (FUNC0(subreq))
				goto err_ptr;
		}
	} while (bytes_left > 0);

	FUNC5(req);
	return 1;
err_ptr:
	desc->pg_error = FUNC1(subreq);
	FUNC5(req);
	return 0;
out_cleanup_subreq:
	if (req != subreq)
		FUNC6(desc, subreq);
	return 0;
}