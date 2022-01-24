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
struct rb_root {int dummy; } ;
struct TYPE_2__ {struct rb_root ci_tree; } ;
struct ocfs2_caching_info {int ci_flags; unsigned int ci_num_cached; TYPE_1__ ci_cache; int /*<<< orphan*/  ci_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int OCFS2_CACHE_FL_INLINE ; 
 struct rb_root RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_caching_info*) ; 
 scalar_t__ FUNC3 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_caching_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_caching_info*) ; 
 unsigned int FUNC6 (struct rb_root*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long,unsigned int,unsigned int) ; 

void FUNC8(struct ocfs2_caching_info *ci)
{
	unsigned int tree, to_purge, purged;
	struct rb_root root = RB_ROOT;

	FUNC0(!ci || !ci->ci_ops);

	FUNC2(ci);
	tree = !(ci->ci_flags & OCFS2_CACHE_FL_INLINE);
	to_purge = ci->ci_num_cached;

	FUNC7(
		(unsigned long long)FUNC3(ci),
		to_purge, tree);

	/* If we're a tree, save off the root so that we can safely
	 * initialize the cache. We do the work to free tree members
	 * without the spinlock. */
	if (tree)
		root = ci->ci_cache.ci_tree;

	FUNC4(ci, 0);
	FUNC5(ci);

	purged = FUNC6(&root);
	/* If possible, track the number wiped so that we can more
	 * easily detect counting errors. Unfortunately, this is only
	 * meaningful for trees. */
	if (tree && purged != to_purge)
		FUNC1(ML_ERROR, "Owner %llu, count = %u, purged = %u\n",
		     (unsigned long long)FUNC3(ci),
		     to_purge, purged);
}