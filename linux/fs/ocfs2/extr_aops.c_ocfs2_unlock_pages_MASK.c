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
struct ocfs2_write_ctxt {int w_num_pages; int /*<<< orphan*/ ** w_pages; int /*<<< orphan*/ * w_target_page; scalar_t__ w_target_locked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ocfs2_write_ctxt *wc)
{
	int i;

	/*
	 * w_target_locked is only set to true in the page_mkwrite() case.
	 * The intent is to allow us to lock the target page from write_begin()
	 * to write_end(). The caller must hold a ref on w_target_page.
	 */
	if (wc->w_target_locked) {
		FUNC0(!wc->w_target_page);
		for (i = 0; i < wc->w_num_pages; i++) {
			if (wc->w_target_page == wc->w_pages[i]) {
				wc->w_pages[i] = NULL;
				break;
			}
		}
		FUNC1(wc->w_target_page);
		FUNC3(wc->w_target_page);
	}
	FUNC2(wc->w_pages, wc->w_num_pages);
}