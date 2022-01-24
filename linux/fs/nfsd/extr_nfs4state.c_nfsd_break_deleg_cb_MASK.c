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
struct nfs4_file {int fi_had_conflict; int /*<<< orphan*/  fi_lock; } ;
struct TYPE_2__ {struct nfs4_file* sc_file; } ;
struct nfs4_delegation {TYPE_1__ dl_stid; } ;
struct file_lock {scalar_t__ fl_break_time; scalar_t__ fl_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_delegation*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3(struct file_lock *fl)
{
	bool ret = false;
	struct nfs4_delegation *dp = (struct nfs4_delegation *)fl->fl_owner;
	struct nfs4_file *fp = dp->dl_stid.sc_file;

	/*
	 * We don't want the locks code to timeout the lease for us;
	 * we'll remove it ourself if a delegation isn't returned
	 * in time:
	 */
	fl->fl_break_time = 0;

	FUNC1(&fp->fi_lock);
	fp->fi_had_conflict = true;
	FUNC0(dp);
	FUNC2(&fp->fi_lock);
	return ret;
}