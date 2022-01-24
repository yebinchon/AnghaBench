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
struct page {int dummy; } ;
struct list_head {int /*<<< orphan*/  next; } ;
struct nfs_pgio_mirror {int /*<<< orphan*/  pg_count; int /*<<< orphan*/  pg_base; struct list_head pg_list; } ;
struct nfs_page_array {unsigned int npages; struct page** pagevec; struct page** page_array; } ;
struct nfs_pgio_header {int /*<<< orphan*/  pages; struct nfs_page_array page_array; } ;
struct nfs_pageio_descriptor {int pg_error; int pg_ioflags; int /*<<< orphan*/ * pg_rpc_callops; scalar_t__ pg_moreio; int /*<<< orphan*/  pg_dreq; int /*<<< orphan*/  pg_inode; } ;
struct nfs_page {struct page* wb_page; } ;
struct nfs_commit_info {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct page**) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FLUSH_COND_STABLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int) ; 
 struct page** FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_commit_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfs_page* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_page*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_pgio_common_ops ; 
 struct nfs_pgio_mirror* FUNC8 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_pgio_header*,int /*<<< orphan*/ ,int,struct nfs_commit_info*) ; 
 scalar_t__ FUNC11 (struct nfs_commit_info*) ; 

int FUNC12(struct nfs_pageio_descriptor *desc,
		     struct nfs_pgio_header *hdr)
{
	struct nfs_pgio_mirror *mirror = FUNC8(desc);

	struct nfs_page		*req;
	struct page		**pages,
				*last_page;
	struct list_head *head = &mirror->pg_list;
	struct nfs_commit_info cinfo;
	struct nfs_page_array *pg_array = &hdr->page_array;
	unsigned int pagecount, pageused;
	gfp_t gfp_flags = GFP_KERNEL;

	pagecount = FUNC7(mirror->pg_base, mirror->pg_count);
	pg_array->npages = pagecount;

	if (pagecount <= FUNC0(pg_array->page_array))
		pg_array->pagevec = pg_array->page_array;
	else {
		pg_array->pagevec = FUNC2(pagecount, sizeof(struct page *), gfp_flags);
		if (!pg_array->pagevec) {
			pg_array->npages = 0;
			FUNC9(hdr);
			desc->pg_error = -ENOMEM;
			return desc->pg_error;
		}
	}

	FUNC4(&cinfo, desc->pg_inode, desc->pg_dreq);
	pages = hdr->page_array.pagevec;
	last_page = NULL;
	pageused = 0;
	while (!FUNC3(head)) {
		req = FUNC5(head->next);
		FUNC6(req, &hdr->pages);

		if (!last_page || last_page != req->wb_page) {
			pageused++;
			if (pageused > pagecount)
				break;
			*pages++ = last_page = req->wb_page;
		}
	}
	if (FUNC1(pageused != pagecount)) {
		FUNC9(hdr);
		desc->pg_error = -EINVAL;
		return desc->pg_error;
	}

	if ((desc->pg_ioflags & FLUSH_COND_STABLE) &&
	    (desc->pg_moreio || FUNC11(&cinfo)))
		desc->pg_ioflags &= ~FLUSH_COND_STABLE;

	/* Set up the argument struct */
	FUNC10(hdr, mirror->pg_count, desc->pg_ioflags, &cinfo);
	desc->pg_rpc_callops = &nfs_pgio_common_ops;
	return 0;
}