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
struct nfs_find_desc {struct nfs_fattr* fattr; struct nfs_fh* fh; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {scalar_t__ fileid; int mode; } ;
struct inode {int i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int S_IFMT ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct nfs_fh*) ; 

__attribute__((used)) static int
FUNC5(struct inode *inode, void *opaque)
{
	struct nfs_find_desc	*desc = (struct nfs_find_desc *)opaque;
	struct nfs_fh		*fh = desc->fh;
	struct nfs_fattr	*fattr = desc->fattr;

	if (FUNC1(inode) != fattr->fileid)
		return 0;
	if ((S_IFMT & inode->i_mode) != (S_IFMT & fattr->mode))
		return 0;
	if (FUNC4(FUNC0(inode), fh))
		return 0;
	if (FUNC3(inode) || FUNC2(inode))
		return 0;
	return 1;
}