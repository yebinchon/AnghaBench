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
struct snapshot_handle {int cur; int sync_read; void* buffer; } ;
struct chain_allocator {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void*) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PG_ANY ; 
 int /*<<< orphan*/  PG_SAFE ; 
 int FUNC1 (void*) ; 
 void* buffer ; 
 int /*<<< orphan*/  FUNC2 (struct chain_allocator*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  copy_bm ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ *,struct chain_allocator*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (void*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int nr_copy_pages ; 
 int nr_meta_pages ; 
 int /*<<< orphan*/  orig_bm ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * restore_pblist ; 
 int /*<<< orphan*/ * safe_pages_list ; 
 int FUNC14 (void*,int /*<<< orphan*/ *) ; 

int FUNC15(struct snapshot_handle *handle)
{
	static struct chain_allocator ca;
	int error = 0;

	/* Check if we have already loaded the entire image */
	if (handle->cur > 1 && handle->cur > nr_meta_pages + nr_copy_pages)
		return 0;

	handle->sync_read = 1;

	if (!handle->cur) {
		if (!buffer)
			/* This makes the buffer be freed by swsusp_free() */
			buffer = FUNC5(GFP_ATOMIC, PG_ANY);

		if (!buffer)
			return -ENOMEM;

		handle->buffer = buffer;
	} else if (handle->cur == 1) {
		error = FUNC8(buffer);
		if (error)
			return error;

		safe_pages_list = NULL;

		error = FUNC9(&copy_bm, GFP_ATOMIC, PG_ANY);
		if (error)
			return error;

		/* Allocate buffer for page keys. */
		error = FUNC11(nr_copy_pages);
		if (error)
			return error;

		FUNC7();
	} else if (handle->cur <= nr_meta_pages + 1) {
		error = FUNC14(buffer, &copy_bm);
		if (error)
			return error;

		if (handle->cur == nr_meta_pages + 1) {
			error = FUNC13(&orig_bm, &copy_bm);
			if (error)
				return error;

			FUNC2(&ca, GFP_ATOMIC, PG_SAFE);
			FUNC10(&orig_bm);
			restore_pblist = NULL;
			handle->buffer = FUNC4(&orig_bm, &ca);
			handle->sync_read = 0;
			if (FUNC0(handle->buffer))
				return FUNC1(handle->buffer);
		}
	} else {
		FUNC3();
		/* Restore page key for data page (s390 only). */
		FUNC12(handle->buffer);
		FUNC6(handle->buffer);
		handle->buffer = FUNC4(&orig_bm, &ca);
		if (FUNC0(handle->buffer))
			return FUNC1(handle->buffer);
		if (handle->buffer != buffer)
			handle->sync_read = 0;
	}
	handle->cur++;
	return PAGE_SIZE;
}