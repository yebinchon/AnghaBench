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
struct reiserfs_journal {int /*<<< orphan*/  j_dirty_buffers_lock; TYPE_1__* j_current_jl; } ;
struct reiserfs_jh {TYPE_1__* jl; int /*<<< orphan*/  list; struct buffer_head* bh; } ;
struct buffer_head {struct reiserfs_jh* b_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  j_bh_list; int /*<<< orphan*/  j_tail_bh_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct reiserfs_jh*) ; 
 struct reiserfs_jh* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC7(struct reiserfs_journal *j, struct buffer_head *bh,
			   int tail)
{
	struct reiserfs_jh *jh;

	if (bh->b_private) {
		FUNC5(&j->j_dirty_buffers_lock);
		if (!bh->b_private) {
			FUNC6(&j->j_dirty_buffers_lock);
			goto no_jh;
		}
		jh = bh->b_private;
		FUNC4(&jh->list);
	} else {
no_jh:
		FUNC2(bh);
		jh = FUNC1();
		FUNC5(&j->j_dirty_buffers_lock);
		/*
		 * buffer must be locked for __add_jh, should be able to have
		 * two adds at the same time
		 */
		FUNC0(bh->b_private);
		jh->bh = bh;
		bh->b_private = jh;
	}
	jh->jl = j->j_current_jl;
	if (tail)
		FUNC3(&jh->list, &jh->jl->j_tail_bh_list);
	else {
		FUNC3(&jh->list, &jh->jl->j_bh_list);
	}
	FUNC6(&j->j_dirty_buffers_lock);
	return 0;
}