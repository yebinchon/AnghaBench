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
struct nfs_rpc_ops {struct nfs_client* (* alloc_client ) (struct nfs_client_initdata const*) ;struct nfs_client* (* init_client ) (struct nfs_client*,struct nfs_client_initdata const*) ;} ;
struct nfs_net {int /*<<< orphan*/  nfs_client_lock; int /*<<< orphan*/  nfs_client_list; } ;
struct nfs_client_initdata {int /*<<< orphan*/  init_flags; int /*<<< orphan*/ * hostname; TYPE_1__* nfs_mod; int /*<<< orphan*/  net; } ;
struct nfs_client {int /*<<< orphan*/  cl_flags; int /*<<< orphan*/  cl_share_link; TYPE_2__* rpc_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* free_client ) (struct nfs_client*) ;} ;
struct TYPE_3__ {struct nfs_rpc_ops* rpc_ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfs_net* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfs_client* FUNC4 (struct nfs_client_initdata const*,struct nfs_client*) ; 
 struct nfs_client* FUNC5 (struct nfs_client_initdata const*) ; 
 int /*<<< orphan*/  nfs_net_id ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_client*) ; 
 struct nfs_client* FUNC9 (struct nfs_client*,struct nfs_client_initdata const*) ; 
 struct nfs_client* FUNC10 (struct nfs_client_initdata const*) ; 

struct nfs_client *FUNC11(const struct nfs_client_initdata *cl_init)
{
	struct nfs_client *clp, *new = NULL;
	struct nfs_net *nn = FUNC3(cl_init->net, nfs_net_id);
	const struct nfs_rpc_ops *rpc_ops = cl_init->nfs_mod->rpc_ops;

	if (cl_init->hostname == NULL) {
		FUNC1(1);
		return NULL;
	}

	/* see if the client already exists */
	do {
		FUNC6(&nn->nfs_client_lock);

		clp = FUNC5(cl_init);
		if (clp) {
			FUNC7(&nn->nfs_client_lock);
			if (new)
				new->rpc_ops->free_client(new);
			if (FUNC0(clp))
				return clp;
			return FUNC4(cl_init, clp);
		}
		if (new) {
			FUNC2(&new->cl_share_link,
					&nn->nfs_client_list);
			FUNC7(&nn->nfs_client_lock);
			new->cl_flags = cl_init->init_flags;
			return rpc_ops->init_client(new, cl_init);
		}

		FUNC7(&nn->nfs_client_lock);

		new = rpc_ops->alloc_client(cl_init);
	} while (!FUNC0(new));

	return new;
}