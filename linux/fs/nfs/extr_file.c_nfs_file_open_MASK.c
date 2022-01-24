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
struct file {int /*<<< orphan*/  f_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSIOS_VFSOPEN ; 
 int /*<<< orphan*/  FUNC0 (char*,struct file*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct file*) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, struct file *filp)
{
	int res;

	FUNC0("NFS: open file(%pD2)\n", filp);

	FUNC2(inode, NFSIOS_VFSOPEN);
	res = FUNC1(filp->f_flags);
	if (res)
		return res;

	res = FUNC3(inode, filp);
	return res;
}