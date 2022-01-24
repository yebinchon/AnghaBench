#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfsd_net {int /*<<< orphan*/ * unconf_id_hashtbl; int /*<<< orphan*/  unconf_name_tree; int /*<<< orphan*/  client_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  cl_id; } ;
struct nfs4_client {int /*<<< orphan*/  cl_idhash; TYPE_1__ cl_clientid; int /*<<< orphan*/  cl_flags; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD4_CLIENT_CONFIRMED ; 
 int /*<<< orphan*/  FUNC0 (struct nfs4_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct nfsd_net* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC6 (struct nfs4_client*) ; 

__attribute__((used)) static void
FUNC7(struct nfs4_client *clp)
{
	unsigned int idhashval;
	struct nfsd_net *nn = FUNC5(clp->net, nfsd_net_id);

	FUNC4(&nn->client_lock);

	FUNC1(NFSD4_CLIENT_CONFIRMED, &clp->cl_flags);
	FUNC0(clp, &nn->unconf_name_tree);
	idhashval = FUNC2(clp->cl_clientid.cl_id);
	FUNC3(&clp->cl_idhash, &nn->unconf_id_hashtbl[idhashval]);
	FUNC6(clp);
}