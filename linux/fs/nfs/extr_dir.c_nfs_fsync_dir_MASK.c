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
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FILE ; 
 int /*<<< orphan*/  NFSIOS_VFSFSYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct file*,int) ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct file *filp, loff_t start, loff_t end,
			 int datasync)
{
	struct inode *inode = FUNC1(filp);

	FUNC0(FILE, "NFS: fsync dir(%pD2) datasync %d\n", filp, datasync);

	FUNC2(inode);
	FUNC4(inode, NFSIOS_VFSFSYNC);
	FUNC3(inode);
	return 0;
}