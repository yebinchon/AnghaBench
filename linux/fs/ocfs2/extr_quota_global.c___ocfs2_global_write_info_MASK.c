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
struct super_block {TYPE_2__* s_op; } ;
struct TYPE_3__ {int /*<<< orphan*/  dqi_free_entry; int /*<<< orphan*/  dqi_free_blk; int /*<<< orphan*/  dqi_blocks; } ;
struct ocfs2_mem_dqinfo {TYPE_1__ dqi_gi; int /*<<< orphan*/  dqi_syncms; } ;
struct ocfs2_global_disk_dqinfo {void* dqi_free_entry; void* dqi_free_blk; void* dqi_blocks; void* dqi_syncms; void* dqi_igrace; void* dqi_bgrace; } ;
struct mem_dqinfo {int /*<<< orphan*/  dqi_igrace; int /*<<< orphan*/  dqi_bgrace; int /*<<< orphan*/  dqi_flags; struct ocfs2_mem_dqinfo* dqi_priv; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int (* quota_write ) (struct super_block*,int,char*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DQF_INFO_DIRTY ; 
 int EIO ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_GLOBAL_INFO_OFF ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct mem_dqinfo* FUNC2 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct super_block*,int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb, int type)
{
	struct mem_dqinfo *info = FUNC2(sb, type);
	struct ocfs2_mem_dqinfo *oinfo = info->dqi_priv;
	struct ocfs2_global_disk_dqinfo dinfo;
	ssize_t size;

	FUNC3(&dq_data_lock);
	info->dqi_flags &= ~DQF_INFO_DIRTY;
	dinfo.dqi_bgrace = FUNC0(info->dqi_bgrace);
	dinfo.dqi_igrace = FUNC0(info->dqi_igrace);
	FUNC4(&dq_data_lock);
	dinfo.dqi_syncms = FUNC0(oinfo->dqi_syncms);
	dinfo.dqi_blocks = FUNC0(oinfo->dqi_gi.dqi_blocks);
	dinfo.dqi_free_blk = FUNC0(oinfo->dqi_gi.dqi_free_blk);
	dinfo.dqi_free_entry = FUNC0(oinfo->dqi_gi.dqi_free_entry);
	size = sb->s_op->quota_write(sb, type, (char *)&dinfo,
				     sizeof(struct ocfs2_global_disk_dqinfo),
				     OCFS2_GLOBAL_INFO_OFF);
	if (size != sizeof(struct ocfs2_global_disk_dqinfo)) {
		FUNC1(ML_ERROR, "Cannot write global quota info structure\n");
		if (size >= 0)
			size = -EIO;
		return size;
	}
	return 0;
}