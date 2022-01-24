#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; } ;
struct gfs2_inode {TYPE_1__* i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
struct TYPE_6__ {int /*<<< orphan*/ * journal_info; } ;
struct TYPE_5__ {scalar_t__ gl_state; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int I_DIRTY_INODE ; 
 scalar_t__ LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  RES_DINODE ; 
 int /*<<< orphan*/  SDF_WITHDRAWN ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int FUNC9 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct buffer_head*) ; 
 int FUNC11 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct inode *inode, int flags)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct buffer_head *bh;
	struct gfs2_holder gh;
	int need_unlock = 0;
	int need_endtrans = 0;
	int ret;

	if (!(flags & I_DIRTY_INODE))
		return;
	if (FUNC14(FUNC13(SDF_WITHDRAWN, &sdp->sd_flags)))
		return;
	if (!FUNC7(ip->i_gl)) {
		ret = FUNC8(ip->i_gl, LM_ST_EXCLUSIVE, 0, &gh);
		if (ret) {
			FUNC4(sdp, "dirty_inode: glock %d\n", ret);
			return;
		}
		need_unlock = 1;
	} else if (FUNC2(ip->i_gl->gl_state != LM_ST_EXCLUSIVE))
		return;

	if (current->journal_info == NULL) {
		ret = FUNC11(sdp, RES_DINODE, 0);
		if (ret) {
			FUNC4(sdp, "dirty_inode: gfs2_trans_begin %d\n", ret);
			goto out;
		}
		need_endtrans = 1;
	}

	ret = FUNC9(ip, &bh);
	if (ret == 0) {
		FUNC10(ip->i_gl, bh);
		FUNC5(ip, bh->b_data);
		FUNC3(bh);
	}

	if (need_endtrans)
		FUNC12(sdp);
out:
	if (need_unlock)
		FUNC6(&gh);
}