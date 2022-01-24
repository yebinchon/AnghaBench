#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_flctx; } ;
struct file_lock_context {int /*<<< orphan*/  flc_posix; } ;
struct file_lock {int fl_flags; TYPE_1__* fl_ops; int /*<<< orphan*/ * fl_lmops; struct file* fl_file; int /*<<< orphan*/  fl_pid; int /*<<< orphan*/  fl_owner; int /*<<< orphan*/  fl_end; scalar_t__ fl_start; int /*<<< orphan*/  fl_type; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_4__ {int /*<<< orphan*/  tgid; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* fl_release_private ) (struct file_lock*) ;} ;

/* Variables and functions */
 int FL_CLOSE ; 
 int FL_POSIX ; 
 int /*<<< orphan*/  F_SETLK ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  OFFSET_MAX ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file_lock*) ; 
 struct inode* FUNC2 (struct file*) ; 
 struct file_lock_context* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct file_lock*,int) ; 
 int FUNC6 (struct file*,int /*<<< orphan*/ ,struct file_lock*,int /*<<< orphan*/ *) ; 

void FUNC7(struct file *filp, fl_owner_t owner)
{
	int error;
	struct inode *inode = FUNC2(filp);
	struct file_lock lock;
	struct file_lock_context *ctx;

	/*
	 * If there are no locks held on this file, we don't need to call
	 * posix_lock_file().  Another process could be setting a lock on this
	 * file at the same time, but we wouldn't remove that lock anyway.
	 */
	ctx =  FUNC3(&inode->i_flctx);
	if (!ctx || FUNC0(&ctx->flc_posix))
		return;

	FUNC1(&lock);
	lock.fl_type = F_UNLCK;
	lock.fl_flags = FL_POSIX | FL_CLOSE;
	lock.fl_start = 0;
	lock.fl_end = OFFSET_MAX;
	lock.fl_owner = owner;
	lock.fl_pid = current->tgid;
	lock.fl_file = filp;
	lock.fl_ops = NULL;
	lock.fl_lmops = NULL;

	error = FUNC6(filp, F_SETLK, &lock, NULL);

	if (lock.fl_ops && lock.fl_ops->fl_release_private)
		lock.fl_ops->fl_release_private(&lock);
	FUNC5(inode, &lock, error);
}