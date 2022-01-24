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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct ocfs2_suballoc_result {int sr_bits; int /*<<< orphan*/  sr_blkno; int /*<<< orphan*/  sr_bit_offset; int /*<<< orphan*/  sr_bg_blkno; } ;
struct ocfs2_alloc_context {scalar_t__ ac_bits_given; int ac_bits_wanted; scalar_t__ ac_which; TYPE_2__* ac_inode; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  bg_allocs; } ;
struct TYPE_6__ {TYPE_1__ alloc_stats; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ OCFS2_AC_USE_INODE ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ocfs2_alloc_context*,int /*<<< orphan*/ *,int,int,struct ocfs2_suballoc_result*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct buffer_head*,struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct ocfs2_alloc_context*) ; 

int FUNC7(handle_t *handle,
			  struct inode *dir,
			  struct buffer_head *parent_fe_bh,
			  struct ocfs2_alloc_context *ac,
			  u64 *suballoc_loc,
			  u16 *suballoc_bit,
			  u64 *fe_blkno)
{
	int status;
	struct ocfs2_suballoc_result res;

	FUNC0(!ac);
	FUNC0(ac->ac_bits_given != 0);
	FUNC0(ac->ac_bits_wanted != 1);
	FUNC0(ac->ac_which != OCFS2_AC_USE_INODE);

	FUNC5(dir, parent_fe_bh, ac);

	status = FUNC4(ac,
					   handle,
					   1,
					   1,
					   &res);
	if (status < 0) {
		FUNC3(status);
		goto bail;
	}
	FUNC2(&FUNC1(ac->ac_inode->i_sb)->alloc_stats.bg_allocs);

	FUNC0(res.sr_bits != 1);

	*suballoc_loc = res.sr_bg_blkno;
	*suballoc_bit = res.sr_bit_offset;
	*fe_blkno = res.sr_blkno;
	ac->ac_bits_given++;
	FUNC6(dir, ac);
	status = 0;
bail:
	if (status)
		FUNC3(status);
	return status;
}