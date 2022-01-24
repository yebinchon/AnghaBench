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
struct ocfs2_super {int /*<<< orphan*/  slot_num; } ;
struct ocfs2_dir_lookup_result {int dummy; } ;
struct ocfs2_dinode {void* i_orphaned_slot; int /*<<< orphan*/  i_flags; void* i_dio_orphaned_slot; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; int /*<<< orphan*/  ip_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_DIO_ORPHANED_FL ; 
 int OCFS2_DIO_ORPHAN_PREFIX_LEN ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_SKIP_ORPHAN_DIR ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_ORPHANED_FL ; 
 int OCFS2_ORPHAN_NAMELEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,char*,int,struct inode*,scalar_t__,struct buffer_head*,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_dinode*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC11 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct ocfs2_super *osb,
			    handle_t *handle,
			    struct inode *inode,
			    struct buffer_head *fe_bh,
			    char *name,
			    struct ocfs2_dir_lookup_result *lookup,
			    struct inode *orphan_dir_inode,
			    bool dio)
{
	struct buffer_head *orphan_dir_bh = NULL;
	int status = 0;
	struct ocfs2_dinode *orphan_fe;
	struct ocfs2_dinode *fe = (struct ocfs2_dinode *) fe_bh->b_data;
	int namelen = dio ?
			(OCFS2_DIO_ORPHAN_PREFIX_LEN + OCFS2_ORPHAN_NAMELEN) :
			OCFS2_ORPHAN_NAMELEN;

	FUNC14(
				(unsigned long long)FUNC1(inode)->ip_blkno);

	status = FUNC11(orphan_dir_inode, &orphan_dir_bh);
	if (status < 0) {
		FUNC7(status);
		goto leave;
	}

	status = FUNC9(handle,
					 FUNC0(orphan_dir_inode),
					 orphan_dir_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC7(status);
		goto leave;
	}

	/*
	 * We're going to journal the change of i_flags and i_orphaned_slot.
	 * It's safe anyway, though some callers may duplicate the journaling.
	 * Journaling within the func just make the logic look more
	 * straightforward.
	 */
	status = FUNC9(handle,
					 FUNC0(inode),
					 fe_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC7(status);
		goto leave;
	}

	/* we're a cluster, and nlink can change on disk from
	 * underneath us... */
	orphan_fe = (struct ocfs2_dinode *) orphan_dir_bh->b_data;
	if (FUNC2(inode->i_mode))
		FUNC8(orphan_fe, 1);
	FUNC13(orphan_dir_inode, FUNC12(orphan_fe));
	FUNC10(handle, orphan_dir_bh);

	status = FUNC3(handle, orphan_dir_inode, name,
				   namelen, inode,
				   FUNC1(inode)->ip_blkno,
				   orphan_dir_bh, lookup);
	if (status < 0) {
		FUNC7(status);
		goto rollback;
	}

	if (dio) {
		/* Update flag OCFS2_DIO_ORPHANED_FL and record the orphan
		 * slot.
		 */
		fe->i_flags |= FUNC6(OCFS2_DIO_ORPHANED_FL);
		fe->i_dio_orphaned_slot = FUNC5(osb->slot_num);
	} else {
		fe->i_flags |= FUNC6(OCFS2_ORPHANED_FL);
		FUNC1(inode)->ip_flags &= ~OCFS2_INODE_SKIP_ORPHAN_DIR;

		/* Record which orphan dir our inode now resides
		 * in. delete_inode will use this to determine which orphan
		 * dir to lock. */
		fe->i_orphaned_slot = FUNC5(osb->slot_num);
	}

	FUNC10(handle, fe_bh);

	FUNC15((unsigned long long)FUNC1(inode)->ip_blkno,
				   osb->slot_num);

rollback:
	if (status < 0) {
		if (FUNC2(inode->i_mode))
			FUNC8(orphan_fe, -1);
		FUNC13(orphan_dir_inode, FUNC12(orphan_fe));
	}

leave:
	FUNC4(orphan_dir_bh);

	return status;
}