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
struct nfs_pgio_mirror {int pg_count; int pg_bsize; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct nfs_page {int wb_bytes; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int,size_t) ; 
 struct nfs_pgio_mirror* FUNC2 (struct nfs_pageio_descriptor*) ; 

size_t FUNC3(struct nfs_pageio_descriptor *desc,
			   struct nfs_page *prev, struct nfs_page *req)
{
	struct nfs_pgio_mirror *mirror = FUNC2(desc);


	if (mirror->pg_count > mirror->pg_bsize) {
		/* should never happen */
		FUNC0(1);
		return 0;
	}

	/*
	 * Limit the request size so that we can still allocate a page array
	 * for it without upsetting the slab allocator.
	 */
	if (((mirror->pg_count + req->wb_bytes) >> PAGE_SHIFT) *
			sizeof(struct page *) > PAGE_SIZE)
		return 0;

	return FUNC1(mirror->pg_bsize - mirror->pg_count, (size_t)req->wb_bytes);
}