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
struct writeback_control {int dummy; } ;
struct page {int /*<<< orphan*/  mapping; } ;
struct orangefs_writepages {scalar_t__ npages; scalar_t__ off; scalar_t__ len; scalar_t__ maxpages; struct page** pages; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct orangefs_write_range {scalar_t__ pos; scalar_t__ len; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct page*,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC6 (struct orangefs_writepages*,struct writeback_control*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

__attribute__((used)) static int FUNC11(struct page *page,
    struct writeback_control *wbc, void *data)
{
	struct orangefs_writepages *ow = data;
	struct orangefs_write_range *wr;
	int ret;

	if (!FUNC1(page)) {
		FUNC10(page);
		/* It's not private so there's nothing to write, right? */
		FUNC8("writepages_callback not private!\n");
		FUNC0();
		return 0;
	}
	wr = (struct orangefs_write_range *)FUNC7(page);

	ret = -1;
	if (ow->npages == 0) {
		ow->off = wr->pos;
		ow->len = wr->len;
		ow->uid = wr->uid;
		ow->gid = wr->gid;
		ow->pages[ow->npages++] = page;
		ret = 0;
		goto done;
	}
	if (!FUNC9(ow->uid, wr->uid) || !FUNC3(ow->gid, wr->gid)) {
		FUNC6(ow, wbc);
		ow->npages = 0;
		ret = -1;
		goto done;
	}
	if (ow->off + ow->len == wr->pos) {
		ow->len += wr->len;
		ow->pages[ow->npages++] = page;
		ret = 0;
		goto done;
	}
done:
	if (ret == -1) {
		if (ow->npages) {
			FUNC6(ow, wbc);
			ow->npages = 0;
		}
		ret = FUNC5(page, wbc);
		FUNC4(page->mapping, ret);
		FUNC10(page);
		FUNC2(page);
	} else {
		if (ow->npages == ow->maxpages) {
			FUNC6(ow, wbc);
			ow->npages = 0;
		}
	}
	return ret;
}