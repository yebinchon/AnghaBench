#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nfs_pgio_header {int /*<<< orphan*/  io_start; TYPE_1__* completion_ops; int /*<<< orphan*/  pages; int /*<<< orphan*/  dreq; int /*<<< orphan*/  io_completion; } ;
struct nfs_pageio_descriptor {int pg_error; int /*<<< orphan*/  pg_dreq; int /*<<< orphan*/  pg_io_completion; } ;
struct nfs_page {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  next; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* error_cleanup ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 struct nfs_page* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_pgio_header*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__ pages ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

int FUNC8(struct nfs_pageio_descriptor *desc,
		      struct nfs_pgio_header *hdr)
{
	FUNC0(pages);

	desc->pg_io_completion = hdr->io_completion;
	desc->pg_dreq = hdr->dreq;
	FUNC2(&hdr->pages, &pages);
	while (!FUNC1(&pages)) {
		struct nfs_page *req = FUNC3(pages.next);

		if (!FUNC4(desc, req))
			break;
	}
	FUNC5(desc);
	if (!FUNC1(&pages)) {
		int err = desc->pg_error < 0 ? desc->pg_error : -EIO;
		hdr->completion_ops->error_cleanup(&pages, err);
		FUNC6(hdr, err, hdr->io_start);
		return err;
	}
	return 0;
}