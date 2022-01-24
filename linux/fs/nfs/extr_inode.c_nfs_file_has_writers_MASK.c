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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct nfs_inode {int /*<<< orphan*/  open_files; struct inode vfs_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct nfs_inode *nfsi)
{
	struct inode *inode = &nfsi->vfs_inode;

	if (!FUNC0(inode->i_mode))
		return false;
	if (FUNC2(&nfsi->open_files))
		return false;
	return FUNC1(inode);
}