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
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_2__ {scalar_t__ inmem_task; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, fl_owner_t id)
{
	struct inode *inode = FUNC3(file);

	/*
	 * If the process doing a transaction is crashed, we should do
	 * roll-back. Otherwise, other reader/write can see corrupted database
	 * until all the writers close its file. Since this should be done
	 * before dropping file lock, it needs to do in ->flush.
	 */
	if (FUNC2(inode) &&
			FUNC0(inode)->inmem_task == current)
		FUNC1(inode);
	return 0;
}