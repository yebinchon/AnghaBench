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

/* Variables and functions */
 int NFS_ATTR_FATTR_GROUP_NAME ; 
 int NFS_ATTR_FATTR_OWNER_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_fattr*) ; 

void FUNC2(struct nfs_fattr *fattr)
{
	if (fattr->valid & NFS_ATTR_FATTR_OWNER_NAME)
		FUNC1(fattr);
	if (fattr->valid & NFS_ATTR_FATTR_GROUP_NAME)
		FUNC0(fattr);
}