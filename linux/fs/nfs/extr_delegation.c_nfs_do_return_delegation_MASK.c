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
struct nfs_delegation {int /*<<< orphan*/  stateid; int /*<<< orphan*/  cred; int /*<<< orphan*/  flags; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DELEGATION_REVOKED ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_delegation*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct nfs_delegation *delegation, int issync)
{
	int res = 0;

	if (!FUNC2(NFS_DELEGATION_REVOKED, &delegation->flags))
		res = FUNC0(inode,
				delegation->cred,
				&delegation->stateid,
				issync);
	FUNC1(delegation);
	return res;
}