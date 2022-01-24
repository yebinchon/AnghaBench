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
struct super_block {int dummy; } ;
struct fid {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct super_block*,struct fid*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jfs_nfs_get_inode ; 

struct dentry *FUNC1(struct super_block *sb, struct fid *fid,
		int fh_len, int fh_type)
{
	return FUNC0(sb, fid, fh_len, fh_type,
				    jfs_nfs_get_inode);
}