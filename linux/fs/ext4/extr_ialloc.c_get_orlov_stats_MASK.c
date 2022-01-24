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
struct orlov_stats {void* used_dirs; int /*<<< orphan*/  free_clusters; void* free_inodes; } ;
struct flex_groups {int /*<<< orphan*/  used_dirs; int /*<<< orphan*/  free_clusters; int /*<<< orphan*/  free_inodes; } ;
struct ext4_group_desc {int dummy; } ;
typedef  size_t ext4_group_t ;
struct TYPE_2__ {struct flex_groups* s_flex_groups; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,struct ext4_group_desc*) ; 
 void* FUNC4 (struct super_block*,struct ext4_group_desc*) ; 
 struct ext4_group_desc* FUNC5 (struct super_block*,size_t,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct super_block*,struct ext4_group_desc*) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb, ext4_group_t g,
			    int flex_size, struct orlov_stats *stats)
{
	struct ext4_group_desc *desc;
	struct flex_groups *flex_group = FUNC0(sb)->s_flex_groups;

	if (flex_size > 1) {
		stats->free_inodes = FUNC2(&flex_group[g].free_inodes);
		stats->free_clusters = FUNC1(&flex_group[g].free_clusters);
		stats->used_dirs = FUNC2(&flex_group[g].used_dirs);
		return;
	}

	desc = FUNC5(sb, g, NULL);
	if (desc) {
		stats->free_inodes = FUNC4(sb, desc);
		stats->free_clusters = FUNC3(sb, desc);
		stats->used_dirs = FUNC6(sb, desc);
	} else {
		stats->free_inodes = 0;
		stats->free_clusters = 0;
		stats->used_dirs = 0;
	}
}