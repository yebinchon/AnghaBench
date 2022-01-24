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
struct nfs_fattr {int dummy; } ;
struct nfs_pgio_header {struct inode* inode; struct nfs_fattr fattr; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pgio_header*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct nfs_pgio_header *hdr)
{
	struct nfs_fattr *fattr = &hdr->fattr;
	struct inode *inode = hdr->inode;

	FUNC2(&inode->i_lock);
	FUNC1(hdr, fattr);
	FUNC0(inode, fattr);
	FUNC3(&inode->i_lock);
}