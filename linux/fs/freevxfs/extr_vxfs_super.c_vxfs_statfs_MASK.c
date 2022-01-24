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
struct vxfs_sb_info {struct vxfs_sb* vsi_raw; } ;
struct vxfs_sb {int /*<<< orphan*/  vs_ifree; int /*<<< orphan*/  vs_free; int /*<<< orphan*/  vs_dsize; } ;
struct kstatfs {int /*<<< orphan*/  f_namelen; void* f_ffree; scalar_t__ f_files; scalar_t__ f_bavail; void* f_bfree; void* f_blocks; int /*<<< orphan*/  f_bsize; int /*<<< orphan*/  f_type; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  VXFS_NAMELEN ; 
 struct vxfs_sb_info* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  VXFS_SUPER_MAGIC ; 
 void* FUNC1 (struct vxfs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct dentry *dentry, struct kstatfs *bufp)
{
	struct vxfs_sb_info		*infp = FUNC0(dentry->d_sb);
	struct vxfs_sb *raw_sb = infp->vsi_raw;

	bufp->f_type = VXFS_SUPER_MAGIC;
	bufp->f_bsize = dentry->d_sb->s_blocksize;
	bufp->f_blocks = FUNC1(infp, raw_sb->vs_dsize);
	bufp->f_bfree = FUNC1(infp, raw_sb->vs_free);
	bufp->f_bavail = 0;
	bufp->f_files = 0;
	bufp->f_ffree = FUNC1(infp, raw_sb->vs_ifree);
	bufp->f_namelen = VXFS_NAMELEN;

	return 0;
}