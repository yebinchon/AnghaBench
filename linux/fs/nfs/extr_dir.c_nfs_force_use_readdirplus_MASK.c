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
struct nfs_inode {int /*<<< orphan*/  flags; int /*<<< orphan*/  open_files; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_CAP_READDIRPLUS ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_ADVISE_RDPLUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct inode *dir)
{
	struct nfs_inode *nfsi = FUNC0(dir);

	if (FUNC3(dir, NFS_CAP_READDIRPLUS) &&
	    !FUNC2(&nfsi->open_files)) {
		FUNC4(NFS_INO_ADVISE_RDPLUS, &nfsi->flags);
		FUNC1(dir->i_mapping, 0, -1);
	}
}