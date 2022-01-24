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
struct inode {int dummy; } ;
struct file_lock {int /*<<< orphan*/  fl_blocker; int /*<<< orphan*/  fl_wait; } ;

/* Variables and functions */
 int FILE_LOCK_DEFERRED ; 
 int /*<<< orphan*/  FUNC0 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct inode*,struct file_lock*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file_lock *fl)
{
	int error;
	FUNC1 ();
	for (;;) {
		error = FUNC2(inode, fl, NULL);
		if (error != FILE_LOCK_DEFERRED)
			break;
		error = FUNC3(fl->fl_wait, !fl->fl_blocker);
		if (error)
			break;
	}
	FUNC0(fl);
	return error;
}