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
struct ocfs2_qinfo_lvb {scalar_t__ lvb_version; int /*<<< orphan*/  lvb_free_entry; int /*<<< orphan*/  lvb_free_blk; int /*<<< orphan*/  lvb_blocks; int /*<<< orphan*/  lvb_syncms; int /*<<< orphan*/  lvb_igrace; int /*<<< orphan*/  lvb_bgrace; } ;
struct TYPE_2__ {void* dqi_free_entry; void* dqi_free_blk; void* dqi_blocks; int /*<<< orphan*/  dqi_type; int /*<<< orphan*/  dqi_sb; } ;
struct ocfs2_lock_res {int /*<<< orphan*/  l_lksb; } ;
struct ocfs2_mem_dqinfo {TYPE_1__ dqi_gi; void* dqi_syncms; int /*<<< orphan*/  dqi_giblk; int /*<<< orphan*/  dqi_gqinode; struct ocfs2_lock_res dqi_gqlock; } ;
struct ocfs2_global_disk_dqinfo {int /*<<< orphan*/  dqi_free_entry; int /*<<< orphan*/  dqi_free_blk; int /*<<< orphan*/  dqi_blocks; int /*<<< orphan*/  dqi_syncms; int /*<<< orphan*/  dqi_igrace; int /*<<< orphan*/  dqi_bgrace; } ;
struct mem_dqinfo {void* dqi_igrace; void* dqi_bgrace; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 scalar_t__ OCFS2_GLOBAL_INFO_OFF ; 
 scalar_t__ OCFS2_QINFO_LVB_VERSION ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct ocfs2_qinfo_lvb* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_lock_res*) ; 
 struct mem_dqinfo* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ocfs2_mem_dqinfo *oinfo)
{
	struct mem_dqinfo *info = FUNC8(oinfo->dqi_gi.dqi_sb,
					    oinfo->dqi_gi.dqi_type);
	struct ocfs2_lock_res *lockres = &oinfo->dqi_gqlock;
	struct ocfs2_qinfo_lvb *lvb = FUNC4(&lockres->l_lksb);
	struct buffer_head *bh = NULL;
	struct ocfs2_global_disk_dqinfo *gdinfo;
	int status = 0;

	if (FUNC5(&lockres->l_lksb) &&
	    lvb->lvb_version == OCFS2_QINFO_LVB_VERSION) {
		info->dqi_bgrace = FUNC0(lvb->lvb_bgrace);
		info->dqi_igrace = FUNC0(lvb->lvb_igrace);
		oinfo->dqi_syncms = FUNC0(lvb->lvb_syncms);
		oinfo->dqi_gi.dqi_blocks = FUNC0(lvb->lvb_blocks);
		oinfo->dqi_gi.dqi_free_blk = FUNC0(lvb->lvb_free_blk);
		oinfo->dqi_gi.dqi_free_entry =
					FUNC0(lvb->lvb_free_entry);
	} else {
		status = FUNC6(oinfo->dqi_gqinode,
						     oinfo->dqi_giblk, &bh);
		if (status) {
			FUNC3(status);
			goto bail;
		}
		gdinfo = (struct ocfs2_global_disk_dqinfo *)
					(bh->b_data + OCFS2_GLOBAL_INFO_OFF);
		info->dqi_bgrace = FUNC2(gdinfo->dqi_bgrace);
		info->dqi_igrace = FUNC2(gdinfo->dqi_igrace);
		oinfo->dqi_syncms = FUNC2(gdinfo->dqi_syncms);
		oinfo->dqi_gi.dqi_blocks = FUNC2(gdinfo->dqi_blocks);
		oinfo->dqi_gi.dqi_free_blk = FUNC2(gdinfo->dqi_free_blk);
		oinfo->dqi_gi.dqi_free_entry =
					FUNC2(gdinfo->dqi_free_entry);
		FUNC1(bh);
		FUNC7(lockres);
	}

bail:
	return status;
}