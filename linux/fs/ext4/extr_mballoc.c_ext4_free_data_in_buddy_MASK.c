#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rb_node; } ;
struct ext4_group_info {TYPE_1__ bb_free_root; } ;
struct ext4_free_data {int efd_count; int /*<<< orphan*/  efd_group; int /*<<< orphan*/  efd_start_cluster; int /*<<< orphan*/  efd_node; } ;
struct ext4_buddy {int /*<<< orphan*/  bd_bitmap_page; int /*<<< orphan*/  bd_buddy_page; struct ext4_group_info* bd_info; } ;
struct TYPE_4__ {int s_mb_free_pending; int /*<<< orphan*/  s_md_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DISCARD ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_group_info*) ; 
 TYPE_2__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  ext4_free_data_cachep ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct super_block*,int /*<<< orphan*/ ,struct ext4_buddy*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_buddy*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ext4_free_data*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct ext4_buddy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct super_block *sb,
				    struct ext4_free_data *entry)
{
	struct ext4_buddy e4b;
	struct ext4_group_info *db;
	int err, count = 0, count2 = 0;

	FUNC8(1, "gonna free %u blocks in group %u (0x%p):",
		 entry->efd_count, entry->efd_group, entry);

	err = FUNC4(sb, entry->efd_group, &e4b);
	/* we expect to find existing buddy because it's pinned */
	FUNC0(err != 0);

	FUNC12(&FUNC2(sb)->s_md_lock);
	FUNC2(sb)->s_mb_free_pending -= entry->efd_count;
	FUNC13(&FUNC2(sb)->s_md_lock);

	db = e4b.bd_info;
	/* there are blocks to put in buddy to make them really free */
	count += entry->efd_count;
	count2++;
	FUNC3(sb, entry->efd_group);
	/* Take it out of per group rb tree */
	FUNC11(&entry->efd_node, &(db->bb_free_root));
	FUNC9(NULL, &e4b, entry->efd_start_cluster, entry->efd_count);

	/*
	 * Clear the trimmed flag for the group so that the next
	 * ext4_trim_fs can trim it.
	 * If the volume is mounted with -o discard, online discard
	 * is supported and the free blocks will be trimmed online.
	 */
	if (!FUNC14(sb, DISCARD))
		FUNC1(db);

	if (!db->bb_free_root.rb_node) {
		/* No more items in the per group rb tree
		 * balance refcounts from ext4_mb_free_metadata()
		 */
		FUNC10(e4b.bd_buddy_page);
		FUNC10(e4b.bd_bitmap_page);
	}
	FUNC6(sb, entry->efd_group);
	FUNC7(ext4_free_data_cachep, entry);
	FUNC5(&e4b);

	FUNC8(1, "freed %u blocks in %u structures\n", count, count2);
}