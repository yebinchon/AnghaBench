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
struct swsusp_info {int dummy; } ;
struct snapshot_handle {scalar_t__ cur; void* buffer; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PG_ANY ; 
 scalar_t__ FUNC0 (struct page*) ; 
 void* buffer ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  copy_bm ; 
 int /*<<< orphan*/  FUNC2 (void*,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct swsusp_info*) ; 
 void* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ nr_copy_pages ; 
 scalar_t__ nr_meta_pages ; 
 int /*<<< orphan*/  orig_bm ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC10 (struct page*) ; 
 struct page* FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct snapshot_handle *handle)
{
	if (handle->cur > nr_meta_pages + nr_copy_pages)
		return 0;

	if (!buffer) {
		/* This makes the buffer be freed by swsusp_free() */
		buffer = FUNC3(GFP_ATOMIC, PG_ANY);
		if (!buffer)
			return -ENOMEM;
	}
	if (!handle->cur) {
		int error;

		error = FUNC4((struct swsusp_info *)buffer);
		if (error)
			return error;
		handle->buffer = buffer;
		FUNC8(&orig_bm);
		FUNC8(&copy_bm);
	} else if (handle->cur <= nr_meta_pages) {
		FUNC1(buffer);
		FUNC9(buffer, &orig_bm);
	} else {
		struct page *page;

		page = FUNC11(FUNC7(&copy_bm));
		if (FUNC0(page)) {
			/*
			 * Highmem pages are copied to the buffer,
			 * because we can't return with a kmapped
			 * highmem page (we may not be called again).
			 */
			void *kaddr;

			kaddr = FUNC5(page);
			FUNC2(buffer, kaddr);
			FUNC6(kaddr);
			handle->buffer = buffer;
		} else {
			handle->buffer = FUNC10(page);
		}
	}
	handle->cur++;
	return PAGE_SIZE;
}