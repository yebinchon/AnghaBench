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
struct seq_file {int dummy; } ;
struct ocfs2_super {unsigned long s_mount_opt; scalar_t__ preferred_slot; int osb_commit_interval; int local_alloc_bits; int s_clustersize_bits; int /*<<< orphan*/  osb_resv_level; int /*<<< orphan*/  osb_dir_resv_level; scalar_t__* osb_cluster_stack; int /*<<< orphan*/  s_atime_quantum; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  OCFS2_DEFAULT_RESV_LEVEL ; 
 int /*<<< orphan*/  OCFS2_HB_GLOBAL ; 
 int /*<<< orphan*/  OCFS2_HB_LOCAL ; 
 int /*<<< orphan*/  OCFS2_HB_NONE ; 
 scalar_t__ OCFS2_INVALID_SLOT ; 
 unsigned long OCFS2_MOUNT_BARRIER ; 
 unsigned long OCFS2_MOUNT_COHERENCY_BUFFERED ; 
 unsigned long OCFS2_MOUNT_DATA_WRITEBACK ; 
 unsigned long OCFS2_MOUNT_ERRORS_CONT ; 
 unsigned long OCFS2_MOUNT_ERRORS_PANIC ; 
 unsigned long OCFS2_MOUNT_GRPQUOTA ; 
 unsigned long OCFS2_MOUNT_HB_GLOBAL ; 
 unsigned long OCFS2_MOUNT_HB_LOCAL ; 
 unsigned long OCFS2_MOUNT_INODE64 ; 
 unsigned long OCFS2_MOUNT_JOURNAL_ASYNC_COMMIT ; 
 unsigned long OCFS2_MOUNT_LOCALFLOCKS ; 
 unsigned long OCFS2_MOUNT_NOINTR ; 
 unsigned long OCFS2_MOUNT_NOUSERXATTR ; 
 unsigned long OCFS2_MOUNT_POSIX_ACL ; 
 unsigned long OCFS2_MOUNT_USRQUOTA ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCFS2_STACK_LABEL_LEN ; 
 unsigned int FUNC1 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, struct dentry *root)
{
	struct ocfs2_super *osb = FUNC0(root->d_sb);
	unsigned long opts = osb->s_mount_opt;
	unsigned int local_alloc_megs;

	if (opts & (OCFS2_MOUNT_HB_LOCAL | OCFS2_MOUNT_HB_GLOBAL)) {
		FUNC2(s, ",_netdev");
		if (opts & OCFS2_MOUNT_HB_LOCAL)
			FUNC2(s, ",%s", OCFS2_HB_LOCAL);
		else
			FUNC2(s, ",%s", OCFS2_HB_GLOBAL);
	} else
		FUNC2(s, ",%s", OCFS2_HB_NONE);

	if (opts & OCFS2_MOUNT_NOINTR)
		FUNC2(s, ",nointr");

	if (opts & OCFS2_MOUNT_DATA_WRITEBACK)
		FUNC2(s, ",data=writeback");
	else
		FUNC2(s, ",data=ordered");

	if (opts & OCFS2_MOUNT_BARRIER)
		FUNC2(s, ",barrier=1");

	if (opts & OCFS2_MOUNT_ERRORS_PANIC)
		FUNC2(s, ",errors=panic");
	else if (opts & OCFS2_MOUNT_ERRORS_CONT)
		FUNC2(s, ",errors=continue");
	else
		FUNC2(s, ",errors=remount-ro");

	if (osb->preferred_slot != OCFS2_INVALID_SLOT)
		FUNC2(s, ",preferred_slot=%d", osb->preferred_slot);

	FUNC2(s, ",atime_quantum=%u", osb->s_atime_quantum);

	if (osb->osb_commit_interval)
		FUNC2(s, ",commit=%u",
			   (unsigned) (osb->osb_commit_interval / HZ));

	local_alloc_megs = osb->local_alloc_bits >> (20 - osb->s_clustersize_bits);
	if (local_alloc_megs != FUNC1(osb))
		FUNC2(s, ",localalloc=%d", local_alloc_megs);

	if (opts & OCFS2_MOUNT_LOCALFLOCKS)
		FUNC2(s, ",localflocks,");

	if (osb->osb_cluster_stack[0])
		FUNC3(s, "cluster_stack", osb->osb_cluster_stack,
				  OCFS2_STACK_LABEL_LEN);
	if (opts & OCFS2_MOUNT_USRQUOTA)
		FUNC2(s, ",usrquota");
	if (opts & OCFS2_MOUNT_GRPQUOTA)
		FUNC2(s, ",grpquota");

	if (opts & OCFS2_MOUNT_COHERENCY_BUFFERED)
		FUNC2(s, ",coherency=buffered");
	else
		FUNC2(s, ",coherency=full");

	if (opts & OCFS2_MOUNT_NOUSERXATTR)
		FUNC2(s, ",nouser_xattr");
	else
		FUNC2(s, ",user_xattr");

	if (opts & OCFS2_MOUNT_INODE64)
		FUNC2(s, ",inode64");

	if (opts & OCFS2_MOUNT_POSIX_ACL)
		FUNC2(s, ",acl");
	else
		FUNC2(s, ",noacl");

	if (osb->osb_resv_level != OCFS2_DEFAULT_RESV_LEVEL)
		FUNC2(s, ",resv_level=%d", osb->osb_resv_level);

	if (osb->osb_dir_resv_level != osb->osb_resv_level)
		FUNC2(s, ",dir_resv_level=%d", osb->osb_resv_level);

	if (opts & OCFS2_MOUNT_JOURNAL_ASYNC_COMMIT)
		FUNC2(s, ",journal_async_commit");

	return 0;
}