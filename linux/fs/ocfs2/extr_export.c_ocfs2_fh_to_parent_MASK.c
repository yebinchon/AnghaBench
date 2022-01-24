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
typedef  int u64 ;
struct super_block {int dummy; } ;
struct ocfs2_inode_handle {int ih_blkno; scalar_t__ ih_generation; } ;
struct fid {int /*<<< orphan*/ * raw; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC1 (struct super_block*,struct ocfs2_inode_handle*) ; 

__attribute__((used)) static struct dentry *FUNC2(struct super_block *sb,
		struct fid *fid, int fh_len, int fh_type)
{
	struct ocfs2_inode_handle parent;

	if (fh_type != 2 || fh_len < 6)
		return NULL;

	parent.ih_blkno = (u64)FUNC0(fid->raw[3]) << 32;
	parent.ih_blkno |= (u64)FUNC0(fid->raw[4]);
	parent.ih_generation = FUNC0(fid->raw[5]);
	return FUNC1(sb, &parent);
}