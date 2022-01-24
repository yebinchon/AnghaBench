#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file_lock {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_6__ {int (* lock ) (struct file*,int,struct file_lock*) ;int /*<<< orphan*/  (* have_delegation ) (struct inode*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_READ ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct file*,struct file_lock*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct file*,int,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct file *filp, int cmd, struct file_lock *fl, int is_local)
{
	struct inode *inode = filp->f_mapping->host;
	int status;

	/*
	 * Flush all pending writes before doing anything
	 * with locks..
	 */
	status = FUNC4(filp->f_mapping);
	if (status != 0)
		goto out;

	/*
	 * Use local locking if mounted with "-onolock" or with appropriate
	 * "-olocal_lock="
	 */
	if (!is_local)
		status = FUNC0(inode)->lock(filp, cmd, fl);
	else
		status = FUNC1(filp, fl);
	if (status < 0)
		goto out;

	/*
	 * Invalidate cache to prevent missing any changes.  If
	 * the file is mapped, clear the page cache as well so
	 * those mappings will be loaded.
	 *
	 * This makes locking act as a cache coherency point.
	 */
	FUNC4(filp->f_mapping);
	if (!FUNC0(inode)->have_delegation(inode, FMODE_READ)) {
		FUNC5(inode);
		if (FUNC2(filp->f_mapping))
			FUNC3(inode, filp->f_mapping);
	}
out:
	return status;
}