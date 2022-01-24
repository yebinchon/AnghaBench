#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfs_inode {int dummy; } ;
struct nfs_delegation {int /*<<< orphan*/  type; int /*<<< orphan*/  stateid; int /*<<< orphan*/  flags; } ;
struct nfs_client {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {struct nfs_client* nfs_client; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  NFS_DELEGATION_REVOKED ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_delegation*,struct nfs_client*) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_inode*,struct nfs_delegation*,TYPE_1__*) ; 
 int FUNC6 (struct inode*,struct nfs_delegation*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct nfs_delegation *delegation, int issync)
{
	struct nfs_client *clp = FUNC1(inode)->nfs_client;
	struct nfs_inode *nfsi = FUNC0(inode);
	int err = 0;

	if (delegation == NULL)
		return 0;
	do {
		if (FUNC7(NFS_DELEGATION_REVOKED, &delegation->flags))
			break;
		err = FUNC4(inode, &delegation->stateid,
				delegation->type);
		if (!issync || err != -EAGAIN)
			break;
		/*
		 * Guard against state recovery
		 */
		err = FUNC2(clp);
	} while (err == 0);

	if (err) {
		FUNC3(delegation, clp);
		goto out;
	}
	if (!FUNC5(nfsi, delegation, FUNC1(inode)))
		goto out;

	err = FUNC6(inode, delegation, issync);
out:
	return err;
}