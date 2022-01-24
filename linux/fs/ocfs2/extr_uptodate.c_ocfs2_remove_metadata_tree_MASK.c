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
struct ocfs2_meta_cache_item {int /*<<< orphan*/  c_node; scalar_t__ c_block; } ;
struct TYPE_2__ {int /*<<< orphan*/  ci_tree; } ;
struct ocfs2_caching_info {int /*<<< orphan*/  ci_num_cached; TYPE_1__ ci_cache; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,unsigned long long) ; 

__attribute__((used)) static void FUNC3(struct ocfs2_caching_info *ci,
				       struct ocfs2_meta_cache_item *item)
{
	FUNC2(
		(unsigned long long)FUNC0(ci),
		(unsigned long long)item->c_block);

	FUNC1(&item->c_node, &ci->ci_cache.ci_tree);
	ci->ci_num_cached--;
}