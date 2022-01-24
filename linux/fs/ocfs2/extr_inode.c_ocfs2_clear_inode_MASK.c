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
struct ocfs2_super {TYPE_1__* journal; int /*<<< orphan*/  osb_la_resmap; } ;
struct ocfs2_inode_info {unsigned long long ip_blkno; int ip_flags; int /*<<< orphan*/  ip_jinode; scalar_t__ ip_dir_start_lookup; int /*<<< orphan*/  ip_open_count; int /*<<< orphan*/  ip_alloc_sem; int /*<<< orphan*/  ip_io_mutex; int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_open_lockres; int /*<<< orphan*/  ip_inode_lockres; int /*<<< orphan*/  ip_rw_lockres; int /*<<< orphan*/  ip_unwritten_list; int /*<<< orphan*/  ip_io_markers; int /*<<< orphan*/  ip_la_data_resv; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_sb; } ;
struct TYPE_5__ {int ci_flags; int /*<<< orphan*/  ci_num_cached; } ;
struct TYPE_4__ {int /*<<< orphan*/  j_journal; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int OCFS2_CACHE_FL_INLINE ; 
 struct ocfs2_inode_info* FUNC1 (struct inode*) ; 
 int OCFS2_INODE_DELETED ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC24(struct inode *inode)
{
	int status;
	struct ocfs2_inode_info *oi = FUNC1(inode);
	struct ocfs2_super *osb = FUNC2(inode->i_sb);

	FUNC3(inode);
	FUNC22((unsigned long long)oi->ip_blkno,
				inode->i_nlink);

	FUNC8(osb == NULL,
			"Inode=%lu\n", inode->i_ino);

	FUNC5(inode);

	/* To preven remote deletes we hold open lock before, now it
	 * is time to unlock PR and EX open locks. */
	FUNC18(inode);

	/* Do these before all the other work so that we don't bounce
	 * the downconvert thread while waiting to destroy the locks. */
	FUNC16(osb, &oi->ip_rw_lockres);
	FUNC16(osb, &oi->ip_inode_lockres);
	FUNC16(osb, &oi->ip_open_lockres);

	FUNC19(&osb->osb_la_resmap,
			   &oi->ip_la_data_resv);
	FUNC20(&oi->ip_la_data_resv);

	/* We very well may get a clear_inode before all an inodes
	 * metadata has hit disk. Of course, we can't drop any cluster
	 * locks until the journal has finished with it. The only
	 * exception here are successfully wiped inodes - their
	 * metadata can now be considered to be part of the system
	 * inodes from which it came. */
	if (!(oi->ip_flags & OCFS2_INODE_DELETED))
		FUNC12(inode);

	FUNC8(!FUNC7(&oi->ip_io_markers),
			"Clear inode of %llu, inode has io markers\n",
			(unsigned long long)oi->ip_blkno);
	FUNC8(!FUNC7(&oi->ip_unwritten_list),
			"Clear inode of %llu, inode has unwritten extents\n",
			(unsigned long long)oi->ip_blkno);

	FUNC14(inode, 0);

	status = FUNC13(inode);
	if (status < 0)
		FUNC9(status);

	FUNC15(&oi->ip_rw_lockres);
	FUNC15(&oi->ip_inode_lockres);
	FUNC15(&oi->ip_open_lockres);

	FUNC17(FUNC0(inode));

	FUNC8(FUNC0(inode)->ci_num_cached,
			"Clear inode of %llu, inode has %u cache items\n",
			(unsigned long long)oi->ip_blkno,
			FUNC0(inode)->ci_num_cached);

	FUNC8(!(FUNC0(inode)->ci_flags & OCFS2_CACHE_FL_INLINE),
			"Clear inode of %llu, inode has a bad flag\n",
			(unsigned long long)oi->ip_blkno);

	FUNC8(FUNC21(&oi->ip_lock),
			"Clear inode of %llu, inode is locked\n",
			(unsigned long long)oi->ip_blkno);

	FUNC8(!FUNC10(&oi->ip_io_mutex),
			"Clear inode of %llu, io_mutex is locked\n",
			(unsigned long long)oi->ip_blkno);
	FUNC11(&oi->ip_io_mutex);

	/*
	 * down_trylock() returns 0, down_write_trylock() returns 1
	 * kernel 1, world 0
	 */
	FUNC8(!FUNC4(&oi->ip_alloc_sem),
			"Clear inode of %llu, alloc_sem is locked\n",
			(unsigned long long)oi->ip_blkno);
	FUNC23(&oi->ip_alloc_sem);

	FUNC8(oi->ip_open_count,
			"Clear inode of %llu has open count %d\n",
			(unsigned long long)oi->ip_blkno, oi->ip_open_count);

	/* Clear all other flags. */
	oi->ip_flags = 0;
	oi->ip_dir_start_lookup = 0;
	oi->ip_blkno = 0ULL;

	/*
	 * ip_jinode is used to track txns against this inode. We ensure that
	 * the journal is flushed before journal shutdown. Thus it is safe to
	 * have inodes get cleaned up after journal shutdown.
	 */
	FUNC6(osb->journal->j_journal,
				       &oi->ip_jinode);
}