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
struct tracer_stat {scalar_t__ stat_cmp; void* (* stat_next ) (void*,int) ;void* (* stat_start ) (struct tracer_stat*) ;} ;
struct rb_root {int dummy; } ;
struct stat_session {int /*<<< orphan*/  stat_mutex; struct rb_root stat_root; struct tracer_stat* ts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stat_session*) ; 
 scalar_t__ dummy_cmp ; 
 int FUNC1 (struct rb_root*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (struct tracer_stat*) ; 
 void* FUNC5 (void*,int) ; 

__attribute__((used)) static int FUNC6(struct stat_session *session)
{
	struct tracer_stat *ts = session->ts;
	struct rb_root *root = &session->stat_root;
	void *stat;
	int ret = 0;
	int i;

	FUNC2(&session->stat_mutex);
	FUNC0(session);

	if (!ts->stat_cmp)
		ts->stat_cmp = dummy_cmp;

	stat = ts->stat_start(ts);
	if (!stat)
		goto exit;

	ret = FUNC1(root, stat, ts->stat_cmp);
	if (ret)
		goto exit;

	/*
	 * Iterate over the tracer stat entries and store them in an rbtree.
	 */
	for (i = 1; ; i++) {
		stat = ts->stat_next(stat, i);

		/* End of insertion */
		if (!stat)
			break;

		ret = FUNC1(root, stat, ts->stat_cmp);
		if (ret)
			goto exit_free_rbtree;
	}

exit:
	FUNC3(&session->stat_mutex);
	return ret;

exit_free_rbtree:
	FUNC0(session);
	FUNC3(&session->stat_mutex);
	return ret;
}