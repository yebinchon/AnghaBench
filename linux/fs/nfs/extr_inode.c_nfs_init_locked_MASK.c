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
struct nfs_find_desc {int /*<<< orphan*/  fh; struct nfs_fattr* fattr; } ;
struct nfs_fattr {int /*<<< orphan*/  mode; int /*<<< orphan*/  fileid; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct inode *inode, void *opaque)
{
	struct nfs_find_desc	*desc = (struct nfs_find_desc *)opaque;
	struct nfs_fattr	*fattr = desc->fattr;

	FUNC2(inode, fattr->fileid);
	inode->i_mode = fattr->mode;
	FUNC1(FUNC0(inode), desc->fh);
	return 0;
}