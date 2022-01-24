#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_inode_info {int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_open_count; int /*<<< orphan*/  ip_blkno; int /*<<< orphan*/  ip_flags; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {TYPE_3__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct TYPE_6__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_OPEN_DIRECT ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct file*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct ocfs2_inode_info *oi = FUNC0(inode);

	FUNC2(&oi->ip_lock);
	if (!--oi->ip_open_count)
		oi->ip_flags &= ~OCFS2_INODE_OPEN_DIRECT;

	FUNC4(inode, file, file->f_path.dentry,
				 oi->ip_blkno,
				 file->f_path.dentry->d_name.len,
				 file->f_path.dentry->d_name.name,
				 oi->ip_open_count);
	FUNC3(&oi->ip_lock);

	FUNC1(inode, file);

	return 0;
}