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
struct TYPE_2__ {int /*<<< orphan*/  ubi_num; } ;
struct ubifs_info {int no_chk_data_crc; int /*<<< orphan*/  di; TYPE_1__ vi; int /*<<< orphan*/  ltail_lnum; int /*<<< orphan*/  lhead_lnum; int /*<<< orphan*/  highest_inum; int /*<<< orphan*/  assert_action; int /*<<< orphan*/  orph_new; int /*<<< orphan*/  orph_list; int /*<<< orphan*/  old_buds; int /*<<< orphan*/  unclean_leb_list; int /*<<< orphan*/  frdi_idx_list; int /*<<< orphan*/  freeable_list; int /*<<< orphan*/  empty_list; int /*<<< orphan*/  uncat_list; int /*<<< orphan*/  replay_buds; int /*<<< orphan*/  replay_list; int /*<<< orphan*/  idx_gc; int /*<<< orphan*/  infos_list; void* orph_tree; void* size_tree; void* old_idx; void* buds; int /*<<< orphan*/  cmt_wq; int /*<<< orphan*/  write_reserve_mutex; int /*<<< orphan*/  bu_mutex; int /*<<< orphan*/  umount_mutex; int /*<<< orphan*/  log_mutex; int /*<<< orphan*/  tnc_mutex; int /*<<< orphan*/  lp_mutex; int /*<<< orphan*/  commit_sem; int /*<<< orphan*/  orphan_lock; int /*<<< orphan*/  space_lock; int /*<<< orphan*/  buds_lock; int /*<<< orphan*/  cs_lock; int /*<<< orphan*/  cnt_lock; } ;
struct ubi_volume_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSACT_RO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* RB_ROOT ; 
 int /*<<< orphan*/  UBIFS_FIRST_INO ; 
 int /*<<< orphan*/  UBIFS_LOG_LNUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ubifs_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_volume_desc*,TYPE_1__*) ; 

__attribute__((used)) static struct ubifs_info *FUNC8(struct ubi_volume_desc *ubi)
{
	struct ubifs_info *c;

	c = FUNC3(sizeof(struct ubifs_info), GFP_KERNEL);
	if (c) {
		FUNC5(&c->cnt_lock);
		FUNC5(&c->cs_lock);
		FUNC5(&c->buds_lock);
		FUNC5(&c->space_lock);
		FUNC5(&c->orphan_lock);
		FUNC1(&c->commit_sem);
		FUNC4(&c->lp_mutex);
		FUNC4(&c->tnc_mutex);
		FUNC4(&c->log_mutex);
		FUNC4(&c->umount_mutex);
		FUNC4(&c->bu_mutex);
		FUNC4(&c->write_reserve_mutex);
		FUNC2(&c->cmt_wq);
		c->buds = RB_ROOT;
		c->old_idx = RB_ROOT;
		c->size_tree = RB_ROOT;
		c->orph_tree = RB_ROOT;
		FUNC0(&c->infos_list);
		FUNC0(&c->idx_gc);
		FUNC0(&c->replay_list);
		FUNC0(&c->replay_buds);
		FUNC0(&c->uncat_list);
		FUNC0(&c->empty_list);
		FUNC0(&c->freeable_list);
		FUNC0(&c->frdi_idx_list);
		FUNC0(&c->unclean_leb_list);
		FUNC0(&c->old_buds);
		FUNC0(&c->orph_list);
		FUNC0(&c->orph_new);
		c->no_chk_data_crc = 1;
		c->assert_action = ASSACT_RO;

		c->highest_inum = UBIFS_FIRST_INO;
		c->lhead_lnum = c->ltail_lnum = UBIFS_LOG_LNUM;

		FUNC7(ubi, &c->vi);
		FUNC6(c->vi.ubi_num, &c->di);
	}
	return c;
}