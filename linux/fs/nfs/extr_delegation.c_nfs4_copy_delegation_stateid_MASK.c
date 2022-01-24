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
struct nfs_inode {int /*<<< orphan*/  delegation; } ;
struct nfs_delegation {int /*<<< orphan*/  cred; int /*<<< orphan*/  stateid; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
typedef  int fmode_t ;

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 struct cred* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfs_delegation*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_delegation*) ; 
 struct nfs_delegation* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

bool FUNC8(struct inode *inode, fmode_t flags,
		nfs4_stateid *dst, const struct cred **cred)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	struct nfs_delegation *delegation;
	bool ret;

	flags &= FMODE_READ|FMODE_WRITE;
	FUNC6();
	delegation = FUNC5(nfsi->delegation);
	ret = FUNC2(delegation, flags);
	if (ret) {
		FUNC3(dst, &delegation->stateid);
		FUNC4(delegation);
		if (cred)
			*cred = FUNC1(delegation->cred);
	}
	FUNC7();
	return ret;
}