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
struct nfs_net {int /*<<< orphan*/  nfs_client_lock; int /*<<< orphan*/  cb_ident_idr; } ;
struct nfs_client {int /*<<< orphan*/  cl_count; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct nfs_client* FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct nfs_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_net_id ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct nfs_client *
FUNC5(struct net *net, int cb_ident)
{
	struct nfs_client *clp;
	struct nfs_net *nn = FUNC1(net, nfs_net_id);

	FUNC3(&nn->nfs_client_lock);
	clp = FUNC0(&nn->cb_ident_idr, cb_ident);
	if (clp)
		FUNC2(&clp->cl_count);
	FUNC4(&nn->nfs_client_lock);
	return clp;
}