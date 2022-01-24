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
struct ocfs2_caching_info {int ci_flags; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int OCFS2_CACHE_FL_INLINE ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_caching_info*) ; 
 scalar_t__ FUNC1 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_caching_info*) ; 
 int FUNC3 (struct ocfs2_caching_info*,scalar_t__) ; 
 struct ocfs2_meta_cache_item* FUNC4 (struct ocfs2_caching_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct ocfs2_meta_cache_item*) ; 

__attribute__((used)) static int FUNC7(struct ocfs2_caching_info *ci,
			       struct buffer_head *bh)
{
	int index = -1;
	struct ocfs2_meta_cache_item *item = NULL;

	FUNC0(ci);

	FUNC5(
		(unsigned long long)FUNC1(ci),
		(unsigned long long) bh->b_blocknr,
		!!(ci->ci_flags & OCFS2_CACHE_FL_INLINE));

	if (ci->ci_flags & OCFS2_CACHE_FL_INLINE)
		index = FUNC3(ci, bh->b_blocknr);
	else
		item = FUNC4(ci, bh->b_blocknr);

	FUNC2(ci);

	FUNC6(index, item);

	return (index != -1) || (item != NULL);
}