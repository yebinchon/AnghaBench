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
struct xdr_netobj {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;
struct nfs4_client {TYPE_1__ cl_name; int /*<<< orphan*/  cl_cb_waitq; int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  async_lock; int /*<<< orphan*/  async_copies; int /*<<< orphan*/  cl_lo_states; int /*<<< orphan*/  cl_revoked; int /*<<< orphan*/  cl_lru; int /*<<< orphan*/  cl_delegations; int /*<<< orphan*/  cl_openowners; int /*<<< orphan*/  cl_idhash; int /*<<< orphan*/  cl_cb_state; int /*<<< orphan*/  cl_rpc_users; int /*<<< orphan*/  cl_stateids; int /*<<< orphan*/  cl_sessions; int /*<<< orphan*/ * cl_ownerstr_hashtbl; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFSD4_CB_UNKNOWN ; 
 int OWNER_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  client_slab ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nfs4_client*) ; 
 struct nfs4_client* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct xdr_netobj*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nfs4_client *FUNC10(struct xdr_netobj name)
{
	struct nfs4_client *clp;
	int i;

	clp = FUNC6(client_slab, GFP_KERNEL);
	if (clp == NULL)
		return NULL;
	FUNC9(&clp->cl_name, &name, GFP_KERNEL);
	if (clp->cl_name.data == NULL)
		goto err_no_name;
	clp->cl_ownerstr_hashtbl = FUNC4(OWNER_HASH_SIZE,
						 sizeof(struct list_head),
						 GFP_KERNEL);
	if (!clp->cl_ownerstr_hashtbl)
		goto err_no_hashtbl;
	for (i = 0; i < OWNER_HASH_SIZE; i++)
		FUNC0(&clp->cl_ownerstr_hashtbl[i]);
	FUNC0(&clp->cl_sessions);
	FUNC2(&clp->cl_stateids);
	FUNC1(&clp->cl_rpc_users, 0);
	clp->cl_cb_state = NFSD4_CB_UNKNOWN;
	FUNC0(&clp->cl_idhash);
	FUNC0(&clp->cl_openowners);
	FUNC0(&clp->cl_delegations);
	FUNC0(&clp->cl_lru);
	FUNC0(&clp->cl_revoked);
#ifdef CONFIG_NFSD_PNFS
	INIT_LIST_HEAD(&clp->cl_lo_states);
#endif
	FUNC0(&clp->async_copies);
	FUNC8(&clp->async_lock);
	FUNC8(&clp->cl_lock);
	FUNC7(&clp->cl_cb_waitq, "Backchannel slot table");
	return clp;
err_no_hashtbl:
	FUNC3(clp->cl_name.data);
err_no_name:
	FUNC5(client_slab, clp);
	return NULL;
}