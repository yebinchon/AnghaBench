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
struct nfs_fattr {int valid; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int NFS_ATTR_FATTR ; 
 unsigned int NFS_INO_INVALID_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct inode *inode,
		struct nfs_fattr *fattr, unsigned int invalid)
{
	if (FUNC0(inode->i_mode))
		invalid |= NFS_INO_INVALID_DATA;
	FUNC2(inode, invalid);
	if ((fattr->valid & NFS_ATTR_FATTR) == 0)
		return 0;
	return FUNC1(inode, fattr);
}