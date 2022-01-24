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
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; struct super_block* t_super; } ;
struct reiserfs_bitmap_info {int free_count; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  stolen; int /*<<< orphan*/  bmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,unsigned int,int) ; 
 struct reiserfs_bitmap_info* FUNC4 (struct super_block*) ; 
 struct buffer_head* FUNC5 (struct super_block*) ; 
 scalar_t__ FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 scalar_t__ FUNC8 (struct super_block*,unsigned int,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct reiserfs_transaction_handle*,struct buffer_head*) ; 
 int FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,char*,char*,unsigned int) ; 
 int FUNC13 (unsigned long*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,struct buffer_head*,int) ; 
 struct buffer_head* FUNC15 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,struct buffer_head*) ; 
 scalar_t__ FUNC17 (int,scalar_t__) ; 
 scalar_t__ FUNC18 (int,scalar_t__) ; 
 TYPE_1__ scan_bitmap ; 

__attribute__((used)) static int FUNC19(struct reiserfs_transaction_handle *th,
			     unsigned int bmap_n, int *beg, int boundary,
			     int min, int max, int unfm)
{
	struct super_block *s = th->t_super;
	struct reiserfs_bitmap_info *bi = &FUNC4(s)[bmap_n];
	struct buffer_head *bh;
	int end, next;
	int org = *beg;

	FUNC0(!th->t_trans_id);
	FUNC3(bmap_n >= FUNC10(s), "Bitmap %u is out of "
	       "range (0..%u)", bmap_n, FUNC10(s) - 1);
	FUNC1(s, scan_bitmap.bmap);

	if (!bi) {
		FUNC12(s, "jdm-4055", "NULL bitmap info pointer "
			       "for bitmap %d", bmap_n);
		return 0;
	}

	bh = FUNC15(s, bmap_n);
	if (bh == NULL)
		return 0;

	while (1) {
cont:
		if (bi->free_count < min) {
			FUNC7(bh);
			return 0;	/* No free blocks in this bitmap */
		}

		/* search for a first zero bit -- beginning of a window */
		*beg = FUNC13
		    ((unsigned long *)(bh->b_data), boundary, *beg);

		/*
		 * search for a zero bit fails or the rest of bitmap block
		 * cannot contain a zero window of minimum size
		 */
		if (*beg + min > boundary) {
			FUNC7(bh);
			return 0;
		}

		if (unfm && FUNC8(s, bmap_n, *beg, beg))
			continue;
		/* first zero bit found; we check next bits */
		for (end = *beg + 1;; end++) {
			if (end >= *beg + max || end >= boundary
			    || FUNC18(end, bh->b_data)) {
				next = end;
				break;
			}

			/*
			 * finding the other end of zero bit window requires
			 * looking into journal structures (in case of
			 * searching for free blocks for unformatted nodes)
			 */
			if (unfm && FUNC8(s, bmap_n, end, &next))
				break;
		}

		/*
		 * now (*beg) points to beginning of zero bits window,
		 * (end) points to one bit after the window end
		 */

		/* found window of proper size */
		if (end - *beg >= min) {
			int i;
			FUNC14(s, bh, 1);
			/*
			 * try to set all blocks used checking are
			 * they still free
			 */
			for (i = *beg; i < end; i++) {
				/* Don't check in journal again. */
				if (FUNC17
				    (i, bh->b_data)) {
					/*
					 * bit was set by another process while
					 * we slept in prepare_for_journal()
					 */
					FUNC1(s, scan_bitmap.stolen);

					/*
					 * we can continue with smaller set
					 * of allocated blocks, if length of
					 * this set is more or equal to `min'
					 */
					if (i >= *beg + min) {
						end = i;
						break;
					}

					/*
					 * otherwise we clear all bit
					 * were set ...
					 */
					while (--i >= *beg)
						FUNC11
						    (i, bh->b_data);
					FUNC16(s, bh);
					*beg = org;

					/*
					 * Search again in current block
					 * from beginning
					 */
					goto cont;
				}
			}
			bi->free_count -= (end - *beg);
			FUNC9(th, bh);
			FUNC7(bh);

			/* free block count calculation */
			FUNC14(s, FUNC5(s),
						     1);
			FUNC2(s, FUNC6(s) - (end - *beg));
			FUNC9(th, FUNC5(s));

			return end - (*beg);
		} else {
			*beg = next;
		}
	}
}