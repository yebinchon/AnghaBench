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
struct snapshot_handle {int cur; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int nr_copy_pages ; 
 int nr_meta_pages ; 
 int /*<<< orphan*/  orig_bm ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct snapshot_handle *handle)
{
	FUNC0();
	/* Restore page key for data page (s390 only). */
	FUNC5(handle->buffer);
	FUNC4();
	FUNC2(handle->buffer);
	/* Do that only if we have loaded the image entirely */
	if (handle->cur > 1 && handle->cur > nr_meta_pages + nr_copy_pages) {
		FUNC3(&orig_bm);
		FUNC1();
	}
}