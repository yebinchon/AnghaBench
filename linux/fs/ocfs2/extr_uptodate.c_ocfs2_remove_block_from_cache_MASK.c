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
struct ocfs2_meta_cache_item {int dummy; } ;
struct ocfs2_caching_info {int ci_flags; int /*<<< orphan*/  ci_num_cached; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int OCFS2_CACHE_FL_INLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ocfs2_meta_cache_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_caching_info*) ; 
 scalar_t__ FUNC2 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_caching_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_caching_info*,struct ocfs2_meta_cache_item*) ; 
 int FUNC6 (struct ocfs2_caching_info*,scalar_t__) ; 
 struct ocfs2_meta_cache_item* FUNC7 (struct ocfs2_caching_info*,scalar_t__) ; 
 int /*<<< orphan*/  ocfs2_uptodate_cachep ; 
 int /*<<< orphan*/  FUNC8 (unsigned long long,unsigned long long,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct ocfs2_caching_info *ci,
					  sector_t block)
{
	int index;
	struct ocfs2_meta_cache_item *item = NULL;

	FUNC1(ci);
	FUNC8(
		(unsigned long long)FUNC2(ci),
		(unsigned long long) block, ci->ci_num_cached,
		ci->ci_flags);

	if (ci->ci_flags & OCFS2_CACHE_FL_INLINE) {
		index = FUNC6(ci, block);
		if (index != -1)
			FUNC4(ci, index);
	} else {
		item = FUNC7(ci, block);
		if (item)
			FUNC5(ci, item);
	}
	FUNC3(ci);

	if (item)
		FUNC0(ocfs2_uptodate_cachep, item);
}