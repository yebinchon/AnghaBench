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
struct orangefs_write_range {scalar_t__ pos; size_t len; void* gid; void* uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 void* FUNC3 () ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct orangefs_write_range*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct page *page,
				 unsigned int offset,
				 unsigned int length)
{
	struct orangefs_write_range *wr;
	wr = (struct orangefs_write_range *)FUNC8(page);

	if (offset == 0 && length == PAGE_SIZE) {
		FUNC5((struct orangefs_write_range *)FUNC8(page));
		FUNC11(page, 0);
		FUNC0(page);
		FUNC10(page);
		return;
	/* write range entirely within invalidate range (or equal) */
	} else if (FUNC7(page) + offset <= wr->pos &&
	    wr->pos + wr->len <= FUNC7(page) + offset + length) {
		FUNC5((struct orangefs_write_range *)FUNC8(page));
		FUNC11(page, 0);
		FUNC0(page);
		FUNC10(page);
		/* XXX is this right? only caller in fs */
		FUNC2(page);
		return;
	/* invalidate range chops off end of write range */
	} else if (wr->pos < FUNC7(page) + offset &&
	    wr->pos + wr->len <= FUNC7(page) + offset + length &&
	     FUNC7(page) + offset < wr->pos + wr->len) {
		size_t x;
		x = wr->pos + wr->len - (FUNC7(page) + offset);
		FUNC1(x > wr->len);
		wr->len -= x;
		wr->uid = FUNC4();
		wr->gid = FUNC3();
	/* invalidate range chops off beginning of write range */
	} else if (FUNC7(page) + offset <= wr->pos &&
	    FUNC7(page) + offset + length < wr->pos + wr->len &&
	    wr->pos < FUNC7(page) + offset + length) {
		size_t x;
		x = FUNC7(page) + offset + length - wr->pos;
		FUNC1(x > wr->len);
		wr->pos += x;
		wr->len -= x;
		wr->uid = FUNC4();
		wr->gid = FUNC3();
	/* invalidate range entirely within write range (punch hole) */
	} else if (wr->pos < FUNC7(page) + offset &&
	    FUNC7(page) + offset + length < wr->pos + wr->len) {
		/* XXX what do we do here... should not WARN_ON */
		FUNC1(1);
		/* punch hole */
		/*
		 * should we just ignore this and write it out anyway?
		 * it hardly makes sense
		 */
		return;
	/* non-overlapping ranges */
	} else {
		/* WARN if they do overlap */
		if (!((FUNC7(page) + offset + length <= wr->pos) ^
		    (wr->pos + wr->len <= FUNC7(page) + offset))) {
			FUNC1(1);
			FUNC9("invalidate range offset %llu length %u\n",
			    FUNC7(page) + offset, length);
			FUNC9("write range offset %llu length %zu\n",
			    wr->pos, wr->len);
		}
		return;
	}

	/*
	 * Above there are returns where wr is freed or where we WARN.
	 * Thus the following runs if wr was modified above.
	 */

	FUNC6(page);
}