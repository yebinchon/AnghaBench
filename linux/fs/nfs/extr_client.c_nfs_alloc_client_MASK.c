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
struct nfs_client_initdata {int /*<<< orphan*/  net; int /*<<< orphan*/  nconnect; int /*<<< orphan*/  proto; scalar_t__ hostname; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; TYPE_1__* nfs_mod; } ;
struct nfs_client {char* cl_principal; TYPE_1__* cl_nfs_mod; int /*<<< orphan*/  cl_net; int /*<<< orphan*/  cl_nconnect; int /*<<< orphan*/  cl_proto; struct nfs_client* cl_rpcclient; int /*<<< orphan*/  cl_superblocks; int /*<<< orphan*/  cl_hostname; int /*<<< orphan*/  cl_addrlen; int /*<<< orphan*/  cl_addr; int /*<<< orphan*/  cl_cons_state; int /*<<< orphan*/  cl_count; int /*<<< orphan*/  rpc_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  rpc_ops; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct nfs_client* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS_CS_INITING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct nfs_client* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

struct nfs_client *FUNC11(const struct nfs_client_initdata *cl_init)
{
	struct nfs_client *clp;
	int err = -ENOMEM;

	if ((clp = FUNC5(sizeof(*clp), GFP_KERNEL)) == NULL)
		goto error_0;

	clp->cl_nfs_mod = cl_init->nfs_mod;
	if (!FUNC10(clp->cl_nfs_mod->owner))
		goto error_dealloc;

	clp->rpc_ops = clp->cl_nfs_mod->rpc_ops;

	FUNC9(&clp->cl_count, 1);
	clp->cl_cons_state = NFS_CS_INITING;

	FUNC6(&clp->cl_addr, cl_init->addr, cl_init->addrlen);
	clp->cl_addrlen = cl_init->addrlen;

	if (cl_init->hostname) {
		err = -ENOMEM;
		clp->cl_hostname = FUNC4(cl_init->hostname, GFP_KERNEL);
		if (!clp->cl_hostname)
			goto error_cleanup;
	}

	FUNC1(&clp->cl_superblocks);
	clp->cl_rpcclient = FUNC0(-EINVAL);

	clp->cl_proto = cl_init->proto;
	clp->cl_nconnect = cl_init->nconnect;
	clp->cl_net = FUNC2(cl_init->net);

	clp->cl_principal = "*";
	FUNC7(clp);

	return clp;

error_cleanup:
	FUNC8(clp->cl_nfs_mod);
error_dealloc:
	FUNC3(clp);
error_0:
	return FUNC0(err);
}