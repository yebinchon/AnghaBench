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
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_CAP_READDIRPLUS ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_ADVISE_RDPLUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct inode *dir)
{
	struct nfs_inode *nfsi = FUNC0(dir);

	if (FUNC2(dir, NFS_CAP_READDIRPLUS) &&
	    !FUNC1(&nfsi->open_files))
		FUNC3(NFS_INO_ADVISE_RDPLUS, &nfsi->flags);
}