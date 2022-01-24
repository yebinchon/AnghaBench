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
struct nfs_inode {int /*<<< orphan*/  nrequests; int /*<<< orphan*/  delegation; } ;
struct nfs_delegation {int type; scalar_t__ pagemod_limit; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 struct nfs_inode* FUNC0 (struct inode const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct nfs_delegation* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

bool FUNC5(const struct inode *inode)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	struct nfs_delegation *delegation;
	bool ret = true;

	FUNC3();
	delegation = FUNC2(nfsi->delegation);
	if (delegation == NULL || !(delegation->type & FMODE_WRITE))
		goto out;
	if (FUNC1(&nfsi->nrequests) < delegation->pagemod_limit)
		ret = false;
out:
	FUNC4();
	return ret;
}