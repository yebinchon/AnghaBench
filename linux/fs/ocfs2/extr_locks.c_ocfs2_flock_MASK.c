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
struct ocfs2_super {int s_mount_opt; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file_lock {int fl_flags; scalar_t__ fl_type; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int ENOLCK ; 
 int FL_FLOCK ; 
 scalar_t__ F_UNLCK ; 
 int OCFS2_MOUNT_LOCALFLOCKS ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct file*,struct file_lock*) ; 
 int FUNC3 (struct file*,struct inode*,int,struct file_lock*) ; 
 int FUNC4 (struct file*,int,struct file_lock*) ; 
 scalar_t__ FUNC5 (struct ocfs2_super*) ; 

int FUNC6(struct file *file, int cmd, struct file_lock *fl)
{
	struct inode *inode = file->f_mapping->host;
	struct ocfs2_super *osb = FUNC0(inode->i_sb);

	if (!(fl->fl_flags & FL_FLOCK))
		return -ENOLCK;
	if (FUNC1(inode))
		return -ENOLCK;

	if ((osb->s_mount_opt & OCFS2_MOUNT_LOCALFLOCKS) ||
	    FUNC5(osb))
		return FUNC2(file, fl);

	if (fl->fl_type == F_UNLCK)
		return FUNC4(file, cmd, fl);
	else
		return FUNC3(file, inode, cmd, fl);
}