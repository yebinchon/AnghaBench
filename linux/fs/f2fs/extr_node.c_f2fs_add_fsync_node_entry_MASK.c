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
struct page {int dummy; } ;
struct fsync_node_entry {unsigned int seq_id; int /*<<< orphan*/  list; struct page* page; } ;
struct f2fs_sb_info {int /*<<< orphan*/  fsync_node_lock; int /*<<< orphan*/  fsync_node_num; int /*<<< orphan*/  fsync_seg_id; int /*<<< orphan*/  fsync_node_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fsync_node_entry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsync_node_entry_slab ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC6(struct f2fs_sb_info *sbi,
							struct page *page)
{
	struct fsync_node_entry *fn;
	unsigned long flags;
	unsigned int seq_id;

	fn = FUNC1(fsync_node_entry_slab, GFP_NOFS);

	FUNC2(page);
	fn->page = page;
	FUNC0(&fn->list);

	FUNC4(&sbi->fsync_node_lock, flags);
	FUNC3(&fn->list, &sbi->fsync_node_list);
	fn->seq_id = sbi->fsync_seg_id++;
	seq_id = fn->seq_id;
	sbi->fsync_node_num++;
	FUNC5(&sbi->fsync_node_lock, flags);

	return seq_id;
}