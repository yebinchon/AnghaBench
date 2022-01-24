#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfs_inode {scalar_t__ fileid; int /*<<< orphan*/  fh; } ;
struct nfs_entry {TYPE_2__* fh; TYPE_1__* fattr; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {scalar_t__ size; } ;
struct TYPE_3__ {scalar_t__ fileid; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC6(struct dentry *dentry, struct nfs_entry *entry)
{
	struct inode *inode;
	struct nfs_inode *nfsi;

	if (FUNC3(dentry))
		return 0;

	inode = FUNC2(dentry);
	if (FUNC4(inode) || FUNC1(inode))
		return 0;

	nfsi = FUNC0(inode);
	if (entry->fattr->fileid != nfsi->fileid)
		return 0;
	if (entry->fh->size && FUNC5(entry->fh, &nfsi->fh) != 0)
		return 0;
	return 1;
}