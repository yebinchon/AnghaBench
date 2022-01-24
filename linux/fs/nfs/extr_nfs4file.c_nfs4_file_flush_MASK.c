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
struct file {int f_mode; int /*<<< orphan*/  f_mapping; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;

/* Variables and functions */
 int FMODE_WRITE ; 
 int /*<<< orphan*/  NFSIOS_VFSFLUSH ; 
 int /*<<< orphan*/  FUNC0 (char*,struct file*) ; 
 struct inode* FUNC1 (struct file*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*) ; 

__attribute__((used)) static int
FUNC6(struct file *file, fl_owner_t id)
{
	struct inode	*inode = FUNC1(file);

	FUNC0("NFS: flush(%pD2)\n", file);

	FUNC4(inode, NFSIOS_VFSFLUSH);
	if ((file->f_mode & FMODE_WRITE) == 0)
		return 0;

	/*
	 * If we're holding a write delegation, then check if we're required
	 * to flush the i/o on close. If not, then just start the i/o now.
	 */
	if (!FUNC3(inode))
		return FUNC2(file->f_mapping);

	/* Flush writes to the server and return any errors */
	return FUNC5(inode);
}