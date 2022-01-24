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
struct ocfs2_super {int dummy; } ;
struct ocfs2_inode_info {int ip_flags; int /*<<< orphan*/  ip_lock; struct inode* ip_next_orphan; scalar_t__ ip_blkno; } ;
struct ocfs2_dinode {int i_flags; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  enum ocfs2_orphan_reco_type { ____Placeholder_ocfs2_orphan_reco_type } ocfs2_orphan_reco_type ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  OCFS2_DIO_ORPHANED_FL ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INODE_DIO_ORPHAN_ENTRY ; 
 int OCFS2_INODE_MAYBE_ORPHANED ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_super*,int) ; 
 int FUNC9 (struct ocfs2_super*,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_super*,int) ; 
 int FUNC13 (struct ocfs2_super*,int,struct inode**,int) ; 
 int FUNC14 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int) ; 
 int FUNC16 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (unsigned long long) ; 

__attribute__((used)) static int FUNC21(struct ocfs2_super *osb,
				 int slot,
				 enum ocfs2_orphan_reco_type orphan_reco_type)
{
	int ret = 0;
	struct inode *inode = NULL;
	struct inode *iter;
	struct ocfs2_inode_info *oi;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_dinode *di = NULL;

	FUNC19(slot);

	FUNC12(osb, slot);
	ret = FUNC13(osb, slot, &inode, orphan_reco_type);
	FUNC8(osb, slot);

	/* Error here should be noted, but we want to continue with as
	 * many queued inodes as we've got. */
	if (ret)
		FUNC7(ret);

	while (inode) {
		oi = FUNC0(inode);
		FUNC20(
					(unsigned long long)oi->ip_blkno);

		iter = oi->ip_next_orphan;
		oi->ip_next_orphan = NULL;

		if (oi->ip_flags & OCFS2_INODE_DIO_ORPHAN_ENTRY) {
			FUNC4(inode);
			ret = FUNC14(inode, 1);
			if (ret < 0) {
				FUNC7(ret);
				goto unlock_mutex;
			}
			/*
			 * We need to take and drop the inode lock to
			 * force read inode from disk.
			 */
			ret = FUNC10(inode, &di_bh, 1);
			if (ret) {
				FUNC7(ret);
				goto unlock_rw;
			}

			di = (struct ocfs2_dinode *)di_bh->b_data;

			if (di->i_flags & FUNC2(OCFS2_DIO_ORPHANED_FL)) {
				ret = FUNC16(inode, di_bh,
						FUNC3(inode));
				if (ret < 0) {
					if (ret != -ENOSPC)
						FUNC7(ret);
					goto unlock_inode;
				}

				ret = FUNC9(osb, inode,
						di_bh, 0, 0);
				if (ret)
					FUNC7(ret);
			}
unlock_inode:
			FUNC11(inode, 1);
			FUNC1(di_bh);
			di_bh = NULL;
unlock_rw:
			FUNC15(inode, 1);
unlock_mutex:
			FUNC5(inode);

			/* clear dio flag in ocfs2_inode_info */
			oi->ip_flags &= ~OCFS2_INODE_DIO_ORPHAN_ENTRY;
		} else {
			FUNC17(&oi->ip_lock);
			/* Set the proper information to get us going into
			 * ocfs2_delete_inode. */
			oi->ip_flags |= OCFS2_INODE_MAYBE_ORPHANED;
			FUNC18(&oi->ip_lock);
		}

		FUNC6(inode);
		inode = iter;
	}

	return ret;
}