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

/* Variables and functions */
 int /*<<< orphan*/  NFSIOS_VFSRELEASE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct inode *inode, struct file *filp)
{
	FUNC0("NFS: release(%pD2)\n", filp);

	FUNC2(inode, NFSIOS_VFSRELEASE);
	FUNC1(filp);
	return 0;
}