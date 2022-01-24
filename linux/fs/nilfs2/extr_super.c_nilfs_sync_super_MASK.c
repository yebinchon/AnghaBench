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
struct the_nilfs {int /*<<< orphan*/  ns_last_segment_lock; scalar_t__ ns_prot_seq; struct nilfs_super_block** ns_sbp; scalar_t__* ns_sbh; int /*<<< orphan*/  ns_sbwcount; int /*<<< orphan*/  ns_sbsize; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {int /*<<< orphan*/  s_last_seq; int /*<<< orphan*/  s_last_cno; } ;

/* Variables and functions */
 int /*<<< orphan*/  BARRIER ; 
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int NILFS_SB_COMMIT_ALL ; 
 int REQ_FUA ; 
 int REQ_PREFLUSH ; 
 int REQ_SYNC ; 
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct the_nilfs*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_super_block*,struct nilfs_super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (struct the_nilfs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct super_block *sb, int flag)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	int err;

 retry:
	FUNC7(nilfs->ns_sbh[0]);
	if (FUNC6(nilfs, BARRIER)) {
		err = FUNC0(nilfs->ns_sbh[0],
					  REQ_SYNC | REQ_PREFLUSH | REQ_FUA);
	} else {
		err = FUNC10(nilfs->ns_sbh[0]);
	}

	if (FUNC11(err)) {
		FUNC5(sb, KERN_ERR, "unable to write superblock: err=%d",
			  err);
		if (err == -EIO && nilfs->ns_sbh[1]) {
			/*
			 * sbp[0] points to newer log than sbp[1],
			 * so copy sbp[0] to sbp[1] to take over sbp[0].
			 */
			FUNC3(nilfs->ns_sbp[1], nilfs->ns_sbp[0],
			       nilfs->ns_sbsize);
			FUNC4(nilfs);
			goto retry;
		}
	} else {
		struct nilfs_super_block *sbp = nilfs->ns_sbp[0];

		nilfs->ns_sbwcount++;

		/*
		 * The latest segment becomes trailable from the position
		 * written in superblock.
		 */
		FUNC1(nilfs);

		/* update GC protection for recent segments */
		if (nilfs->ns_sbh[1]) {
			if (flag == NILFS_SB_COMMIT_ALL) {
				FUNC7(nilfs->ns_sbh[1]);
				if (FUNC10(nilfs->ns_sbh[1]) < 0)
					goto out;
			}
			if (FUNC2(nilfs->ns_sbp[1]->s_last_cno) <
			    FUNC2(nilfs->ns_sbp[0]->s_last_cno))
				sbp = nilfs->ns_sbp[1];
		}

		FUNC8(&nilfs->ns_last_segment_lock);
		nilfs->ns_prot_seq = FUNC2(sbp->s_last_seq);
		FUNC9(&nilfs->ns_last_segment_lock);
	}
 out:
	return err;
}