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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_cluster_connection {int /*<<< orphan*/  cc_lockspace; } ;
struct file_lock {scalar_t__ fl_type; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int F_CANCELLK ; 
 int F_SETLK ; 
 scalar_t__ F_UNLCK ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file*,struct file_lock*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file*,int,struct file_lock*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file*,struct file_lock*) ; 

__attribute__((used)) static int FUNC4(struct ocfs2_cluster_connection *conn,
		      u64 ino,
		      struct file *file,
		      int cmd,
		      struct file_lock *fl)
{
	/*
	 * This more or less just demuxes the plock request into any
	 * one of three dlm calls.
	 *
	 * Internally, fs/dlm will pass these to a misc device, which
	 * a userspace daemon will read and write to.
	 *
	 * For now, cancel requests (which happen internally only),
	 * are turned into unlocks. Most of this function taken from
	 * gfs2_lock.
	 */

	if (cmd == F_CANCELLK) {
		cmd = F_SETLK;
		fl->fl_type = F_UNLCK;
	}

	if (FUNC0(cmd))
		return FUNC1(conn->cc_lockspace, ino, file, fl);
	else if (fl->fl_type == F_UNLCK)
		return FUNC3(conn->cc_lockspace, ino, file, fl);
	else
		return FUNC2(conn->cc_lockspace, ino, file, cmd, fl);
}