#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct the_nilfs {scalar_t__ ns_cno; int /*<<< orphan*/  ns_cpfile; } ;
struct nilfs_sc_info {TYPE_3__* sc_root; int /*<<< orphan*/  sc_flags; scalar_t__ sc_seg_ctime; scalar_t__ sc_nblk_this_inc; scalar_t__ sc_nblk_inc; TYPE_1__* sc_super; } ;
struct TYPE_5__ {scalar_t__ ssl_prev; scalar_t__ ssl_next; } ;
struct nilfs_checkpoint {int /*<<< orphan*/  cp_ifile_inode; void* cp_cno; void* cp_create; void* cp_nblk_inc; void* cp_blocks_count; void* cp_inodes_count; TYPE_2__ cp_snapshot_list; } ;
struct buffer_head {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ifile; int /*<<< orphan*/  blocks_count; int /*<<< orphan*/  inodes_count; } ;
struct TYPE_4__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  NILFS_SC_HAVE_DELTA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_checkpoint*) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_checkpoint*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct nilfs_checkpoint**,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct nilfs_sc_info *sci)
{
	struct the_nilfs *nilfs = sci->sc_super->s_fs_info;
	struct buffer_head *bh_cp;
	struct nilfs_checkpoint *raw_cp;
	int err;

	err = FUNC5(nilfs->ns_cpfile, nilfs->ns_cno, 0,
					  &raw_cp, &bh_cp);
	if (FUNC9(err)) {
		FUNC0(err == -EINVAL || err == -ENOENT);
		goto failed_ibh;
	}
	raw_cp->cp_snapshot_list.ssl_next = 0;
	raw_cp->cp_snapshot_list.ssl_prev = 0;
	raw_cp->cp_inodes_count =
		FUNC2(FUNC1(&sci->sc_root->inodes_count));
	raw_cp->cp_blocks_count =
		FUNC2(FUNC1(&sci->sc_root->blocks_count));
	raw_cp->cp_nblk_inc =
		FUNC2(sci->sc_nblk_inc + sci->sc_nblk_this_inc);
	raw_cp->cp_create = FUNC2(sci->sc_seg_ctime);
	raw_cp->cp_cno = FUNC2(nilfs->ns_cno);

	if (FUNC8(NILFS_SC_HAVE_DELTA, &sci->sc_flags))
		FUNC3(raw_cp);
	else
		FUNC4(raw_cp);

	FUNC7(sci->sc_root->ifile,
				 &raw_cp->cp_ifile_inode, 1);
	FUNC6(nilfs->ns_cpfile, nilfs->ns_cno, bh_cp);
	return 0;

 failed_ibh:
	return err;
}