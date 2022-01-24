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
struct virtio_chan {scalar_t__ p9_max_pages; } ;
struct page {int dummy; } ;
struct iov_iter {int iov_offset; TYPE_1__* kvec; } ;
struct TYPE_2__ {void* iov_base; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iov_iter*) ; 
 int FUNC5 (struct iov_iter*,struct page***,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct iov_iter*) ; 
 size_t FUNC7 (struct iov_iter*) ; 
 scalar_t__ FUNC8 (void*) ; 
 struct page** FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC10 (void*) ; 
 scalar_t__ FUNC11 (size_t) ; 
 size_t FUNC12 (void*) ; 
 struct page* FUNC13 (void*) ; 
 int /*<<< orphan*/  vp_pinned ; 
 int /*<<< orphan*/  vp_wq ; 
 int FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct virtio_chan *chan,
			       struct page ***pages,
			       struct iov_iter *data,
			       int count,
			       size_t *offs,
			       int *need_drop)
{
	int nr_pages;
	int err;

	if (!FUNC4(data))
		return 0;

	if (!FUNC6(data)) {
		int n;
		/*
		 * We allow only p9_max_pages pinned. We wait for the
		 * Other zc request to finish here
		 */
		if (FUNC2(&vp_pinned) >= chan->p9_max_pages) {
			err = FUNC14(vp_wq,
			      (FUNC2(&vp_pinned) < chan->p9_max_pages));
			if (err == -ERESTARTSYS)
				return err;
		}
		n = FUNC5(data, pages, count, offs);
		if (n < 0)
			return n;
		*need_drop = 1;
		nr_pages = FUNC0(n + *offs, PAGE_SIZE);
		FUNC1(nr_pages, &vp_pinned);
		return n;
	} else {
		/* kernel buffer, no need to pin pages */
		int index;
		size_t len;
		void *p;

		/* we'd already checked that it's non-empty */
		while (1) {
			len = FUNC7(data);
			if (FUNC11(len)) {
				p = data->kvec->iov_base + data->iov_offset;
				break;
			}
			FUNC3(data, 0);
		}
		if (len > count)
			len = count;

		nr_pages = FUNC0((unsigned long)p + len, PAGE_SIZE) -
			   (unsigned long)p / PAGE_SIZE;

		*pages = FUNC9(nr_pages, sizeof(struct page *),
				       GFP_NOFS);
		if (!*pages)
			return -ENOMEM;

		*need_drop = 0;
		p -= (*offs = FUNC12(p));
		for (index = 0; index < nr_pages; index++) {
			if (FUNC8(p))
				(*pages)[index] = FUNC13(p);
			else
				(*pages)[index] = FUNC10(p);
			p += PAGE_SIZE;
		}
		return len;
	}
}