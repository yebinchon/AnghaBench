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
struct reiserfs_journal_list {int dummy; } ;
struct reiserfs_journal {int j_errno; } ;
struct reiserfs_jh {struct buffer_head* bh; int /*<<< orphan*/  list; } ;
struct list_head {int /*<<< orphan*/  prev; int /*<<< orphan*/  next; } ;
struct buffer_head {TYPE_1__* b_page; } ;
struct buffer_chunk {scalar_t__ nr; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_2__ {int /*<<< orphan*/ * mapping; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 struct reiserfs_jh* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_chunk*,struct buffer_head*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct buffer_chunk*)) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_chunk*) ; 

__attribute__((used)) static int FUNC22(spinlock_t * lock,
				 struct reiserfs_journal *j,
				 struct reiserfs_journal_list *jl,
				 struct list_head *list)
{
	struct buffer_head *bh;
	struct reiserfs_jh *jh;
	int ret = j->j_errno;
	struct buffer_chunk chunk;
	struct list_head tmp;
	FUNC0(&tmp);

	chunk.nr = 0;
	FUNC15(lock);
	while (!FUNC10(list)) {
		jh = FUNC1(list->next);
		bh = jh->bh;
		FUNC9(bh);
		if (!FUNC17(bh)) {
			if (!FUNC3(bh)) {
				FUNC11(&jh->list, &tmp);
				goto loop_next;
			}
			FUNC16(lock);
			if (chunk.nr)
				FUNC21(&chunk);
			FUNC20(bh);
			FUNC7();
			FUNC15(lock);
			goto loop_next;
		}
		/*
		 * in theory, dirty non-uptodate buffers should never get here,
		 * but the upper layer io error paths still have a few quirks.
		 * Handle them here as gracefully as we can
		 */
		if (!FUNC5(bh) && FUNC3(bh)) {
			FUNC6(bh);
			ret = -EIO;
		}
		if (FUNC3(bh)) {
			FUNC11(&jh->list, &tmp);
			FUNC2(&chunk, bh, lock, write_ordered_chunk);
		} else {
			FUNC14(bh);
			FUNC19(bh);
		}
loop_next:
		FUNC13(bh);
		FUNC8(lock);
	}
	if (chunk.nr) {
		FUNC16(lock);
		FUNC21(&chunk);
		FUNC15(lock);
	}
	while (!FUNC10(&tmp)) {
		jh = FUNC1(tmp.prev);
		bh = jh->bh;
		FUNC9(bh);
		FUNC14(bh);

		if (FUNC4(bh)) {
			FUNC16(lock);
			FUNC20(bh);
			FUNC15(lock);
		}
		if (!FUNC5(bh)) {
			ret = -EIO;
		}
		/*
		 * ugly interaction with invalidatepage here.
		 * reiserfs_invalidate_page will pin any buffer that has a
		 * valid journal head from an older transaction.  If someone
		 * else sets our buffer dirty after we write it in the first
		 * loop, and then someone truncates the page away, nobody
		 * will ever write the buffer. We're safe if we write the
		 * page one last time after freeing the journal header.
		 */
		if (FUNC3(bh) && FUNC18(bh->b_page->mapping == NULL)) {
			FUNC16(lock);
			FUNC12(REQ_OP_WRITE, 0, 1, &bh);
			FUNC15(lock);
		}
		FUNC13(bh);
		FUNC8(lock);
	}
	FUNC16(lock);
	return ret;
}