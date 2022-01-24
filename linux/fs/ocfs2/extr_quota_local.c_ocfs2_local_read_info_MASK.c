#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ocfs2_quota_recovery {int /*<<< orphan*/ * r_list; } ;
struct ocfs2_mem_dqinfo {int dqi_type; int dqi_flags; int /*<<< orphan*/  dqi_chunk; struct buffer_head* dqi_lqi_bh; int /*<<< orphan*/  dqi_gqlock; int /*<<< orphan*/  dqi_gqinode; struct buffer_head* dqi_libh; void* dqi_blocks; void* dqi_chunks; int /*<<< orphan*/ * dqi_rec; } ;
struct ocfs2_local_disk_dqinfo {int /*<<< orphan*/  dqi_blocks; int /*<<< orphan*/  dqi_chunks; int /*<<< orphan*/  dqi_flags; } ;
struct mem_dqinfo {int dqi_max_spc_limit; int dqi_max_ino_limit; struct ocfs2_mem_dqinfo* dqi_priv; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_5__ {struct ocfs2_quota_recovery* quota_rec; } ;
struct TYPE_4__ {struct inode** files; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ OCFS2_LOCAL_INFO_OFF ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 int OLQF_CLEAN ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_mem_dqinfo*) ; 
 struct ocfs2_mem_dqinfo* FUNC5 (int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct ocfs2_quota_recovery* FUNC9 () ; 
 int FUNC10 (struct super_block*,int) ; 
 int FUNC11 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int FUNC13 (struct inode*,struct ocfs2_local_disk_dqinfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,struct mem_dqinfo*) ; 
 int FUNC16 (struct inode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC17 (struct inode*,struct ocfs2_local_disk_dqinfo*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  olq_update_info ; 
 struct mem_dqinfo* FUNC20 (struct super_block*,int) ; 
 TYPE_1__* FUNC21 (struct super_block*) ; 

__attribute__((used)) static int FUNC22(struct super_block *sb, int type)
{
	struct ocfs2_local_disk_dqinfo *ldinfo;
	struct mem_dqinfo *info = FUNC20(sb, type);
	struct ocfs2_mem_dqinfo *oinfo;
	struct inode *lqinode = FUNC21(sb)->files[type];
	int status;
	struct buffer_head *bh = NULL;
	struct ocfs2_quota_recovery *rec;
	int locked = 0;

	info->dqi_max_spc_limit = 0x7fffffffffffffffLL;
	info->dqi_max_ino_limit = 0x7fffffffffffffffLL;
	oinfo = FUNC5(sizeof(struct ocfs2_mem_dqinfo), GFP_NOFS);
	if (!oinfo) {
		FUNC7(ML_ERROR, "failed to allocate memory for ocfs2 quota"
			       " info.");
		goto out_err;
	}
	info->dqi_priv = oinfo;
	oinfo->dqi_type = type;
	FUNC0(&oinfo->dqi_chunk);
	oinfo->dqi_rec = NULL;
	oinfo->dqi_lqi_bh = NULL;
	oinfo->dqi_libh = NULL;

	status = FUNC10(sb, type);
	if (status < 0)
		goto out_err;

	status = FUNC11(lqinode, &oinfo->dqi_lqi_bh, 1);
	if (status < 0) {
		FUNC8(status);
		goto out_err;
	}
	locked = 1;

	/* Now read local header */
	status = FUNC16(lqinode, 0, &bh);
	if (status) {
		FUNC8(status);
		FUNC7(ML_ERROR, "failed to read quota file info header "
			"(type=%d)\n", type);
		goto out_err;
	}
	ldinfo = (struct ocfs2_local_disk_dqinfo *)(bh->b_data +
						OCFS2_LOCAL_INFO_OFF);
	oinfo->dqi_flags = FUNC6(ldinfo->dqi_flags);
	oinfo->dqi_chunks = FUNC6(ldinfo->dqi_chunks);
	oinfo->dqi_blocks = FUNC6(ldinfo->dqi_blocks);
	oinfo->dqi_libh = bh;

	/* We crashed when using local quota file? */
	if (!(oinfo->dqi_flags & OLQF_CLEAN)) {
		rec = FUNC1(sb)->quota_rec;
		if (!rec) {
			rec = FUNC9();
			if (!rec) {
				status = -ENOMEM;
				FUNC8(status);
				goto out_err;
			}
			FUNC1(sb)->quota_rec = rec;
		}

		status = FUNC17(lqinode, ldinfo, type,
                                                   &rec->r_list[type]);
		if (status < 0) {
			FUNC8(status);
			goto out_err;
		}
	}

	status = FUNC13(lqinode,
						ldinfo,
						&oinfo->dqi_chunk);
	if (status < 0) {
		FUNC8(status);
		goto out_err;
	}

	/* Now mark quota file as used */
	oinfo->dqi_flags &= ~OLQF_CLEAN;
	status = FUNC15(lqinode, bh, olq_update_info, info);
	if (status < 0) {
		FUNC8(status);
		goto out_err;
	}

	return 0;
out_err:
	if (oinfo) {
		FUNC3(oinfo->dqi_gqinode);
		FUNC19(FUNC1(sb), &oinfo->dqi_gqlock);
		FUNC14(&oinfo->dqi_gqlock);
		FUNC2(oinfo->dqi_lqi_bh);
		if (locked)
			FUNC12(lqinode, 1);
		FUNC18(&oinfo->dqi_chunk);
		FUNC4(oinfo);
	}
	FUNC2(bh);
	return -1;
}