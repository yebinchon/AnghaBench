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
struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_delegation {int /*<<< orphan*/  stateid; } ;
struct nfs_client {TYPE_1__* cl_mvops; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;
struct TYPE_4__ {int /*<<< orphan*/  delegation; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* match_stateid ) (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_server*,struct nfs_delegation*) ; 
 struct nfs_delegation* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC8(struct inode *inode,
				      const nfs4_stateid *stateid)
{
	struct nfs_server *server = FUNC1(inode);
	struct nfs_client *clp = server->nfs_client;
	struct nfs_delegation *delegation;

	FUNC5();
	delegation = FUNC4(FUNC0(inode)->delegation);
	if (delegation == NULL)
		goto out_enoent;
	if (stateid != NULL &&
	    !clp->cl_mvops->match_stateid(&delegation->stateid, stateid))
		goto out_enoent;
	FUNC3(server, delegation);
	FUNC6();

	FUNC2(clp);
	return 0;
out_enoent:
	FUNC6();
	return -ENOENT;
}