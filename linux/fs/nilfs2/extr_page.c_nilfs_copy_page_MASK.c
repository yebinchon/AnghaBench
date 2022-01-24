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
struct buffer_head {unsigned long b_state; struct buffer_head* b_this_page; int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_Dirty ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 unsigned long NILFS_BUFFER_INHERENT_BITS ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 struct buffer_head* FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC15(struct page *dst, struct page *src, int copy_dirty)
{
	struct buffer_head *dbh, *dbufs, *sbh, *sbufs;
	unsigned long mask = NILFS_BUFFER_INHERENT_BITS;

	FUNC1(FUNC6(dst));

	sbh = sbufs = FUNC12(src);
	if (!FUNC13(dst))
		FUNC10(dst, sbh->b_size, 0);

	if (copy_dirty)
		mask |= FUNC0(BH_Dirty);

	dbh = dbufs = FUNC12(dst);
	do {
		FUNC11(sbh);
		FUNC11(dbh);
		dbh->b_state = sbh->b_state & mask;
		dbh->b_blocknr = sbh->b_blocknr;
		dbh->b_bdev = sbh->b_bdev;
		sbh = sbh->b_this_page;
		dbh = dbh->b_this_page;
	} while (dbh != dbufs);

	FUNC9(dst, src);

	if (FUNC5(src) && !FUNC5(dst))
		FUNC8(dst);
	else if (!FUNC5(src) && FUNC5(dst))
		FUNC3(dst);
	if (FUNC4(src) && !FUNC4(dst))
		FUNC7(dst);
	else if (!FUNC4(src) && FUNC4(dst))
		FUNC2(dst);

	do {
		FUNC14(sbh);
		FUNC14(dbh);
		sbh = sbh->b_this_page;
		dbh = dbh->b_this_page;
	} while (dbh != dbufs);
}