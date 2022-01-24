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
struct file {int f_mode; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;

/* Variables and functions */
 int FMODE_WRITE ; 
 int /*<<< orphan*/  NFSIOS_VFSFLUSH ; 
 int /*<<< orphan*/  FUNC0 (char*,struct file*) ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*) ; 

__attribute__((used)) static int
FUNC4(struct file *file, fl_owner_t id)
{
	struct inode	*inode = FUNC1(file);

	FUNC0("NFS: flush(%pD2)\n", file);

	FUNC2(inode, NFSIOS_VFSFLUSH);
	if ((file->f_mode & FMODE_WRITE) == 0)
		return 0;

	/* Flush writes to the server and return any errors */
	return FUNC3(inode);
}