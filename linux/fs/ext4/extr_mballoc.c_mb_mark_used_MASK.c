#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ext4_free_extent {int fe_start; int fe_len; scalar_t__ fe_group; } ;
struct ext4_buddy {scalar_t__ bd_group; int /*<<< orphan*/  bd_bitmap; TYPE_2__* bd_info; TYPE_1__* bd_sb; } ;
struct TYPE_8__ {int* s_mb_maxs; } ;
struct TYPE_7__ {int bb_free; int bb_first_free; int /*<<< orphan*/ * bb_counters; int /*<<< orphan*/  bb_fragments; } ;
struct TYPE_6__ {int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_buddy*) ; 
 int /*<<< orphan*/  FUNC6 (int,void*) ; 
 void* FUNC7 (struct ext4_buddy*,int,int*) ; 
 int FUNC8 (struct ext4_buddy*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ext4_buddy*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct ext4_buddy *e4b, struct ext4_free_extent *ex)
{
	int ord;
	int mlen = 0;
	int max = 0;
	int cur;
	int start = ex->fe_start;
	int len = ex->fe_len;
	unsigned ret = 0;
	int len0 = len;
	void *buddy;

	FUNC0(start + len > (e4b->bd_sb->s_blocksize << 3));
	FUNC0(e4b->bd_group != ex->fe_group);
	FUNC2(FUNC3(e4b->bd_sb, e4b->bd_group));
	FUNC5(e4b);
	FUNC9(e4b, start, len);

	e4b->bd_info->bb_free -= len;
	if (e4b->bd_info->bb_first_free == start)
		e4b->bd_info->bb_first_free += len;

	/* let's maintain fragments counter */
	if (start != 0)
		mlen = !FUNC12(start - 1, e4b->bd_bitmap);
	if (start + len < FUNC1(e4b->bd_sb)->s_mb_maxs[0])
		max = !FUNC12(start + len, e4b->bd_bitmap);
	if (mlen && max)
		e4b->bd_info->bb_fragments++;
	else if (!mlen && !max)
		e4b->bd_info->bb_fragments--;

	/* let's maintain buddy itself */
	while (len) {
		ord = FUNC8(e4b, start);

		if (((start >> ord) << ord) == start && len >= (1 << ord)) {
			/* the whole chunk may be allocated at once! */
			mlen = 1 << ord;
			buddy = FUNC7(e4b, ord, &max);
			FUNC0((start >> ord) >= max);
			FUNC10(start >> ord, buddy);
			e4b->bd_info->bb_counters[ord]--;
			start += mlen;
			len -= mlen;
			FUNC0(len < 0);
			continue;
		}

		/* store for history */
		if (ret == 0)
			ret = len | (ord << 16);

		/* we have to split large buddy */
		FUNC0(ord <= 0);
		buddy = FUNC7(e4b, ord, &max);
		FUNC10(start >> ord, buddy);
		e4b->bd_info->bb_counters[ord]--;

		ord--;
		cur = (start >> ord) & ~1U;
		buddy = FUNC7(e4b, ord, &max);
		FUNC6(cur, buddy);
		FUNC6(cur + 1, buddy);
		e4b->bd_info->bb_counters[ord]++;
		e4b->bd_info->bb_counters[ord]++;
	}
	FUNC11(e4b->bd_sb, e4b->bd_info);

	FUNC4(e4b->bd_bitmap, ex->fe_start, len0);
	FUNC5(e4b);

	return ret;
}