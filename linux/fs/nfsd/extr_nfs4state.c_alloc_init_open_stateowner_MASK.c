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
struct nfsd4_open {int /*<<< orphan*/  op_seqid; int /*<<< orphan*/  op_owner; } ;
struct nfsd4_compound_state {struct nfs4_client* clp; } ;
struct TYPE_2__ {int so_is_open_owner; int /*<<< orphan*/  so_seqid; int /*<<< orphan*/ * so_ops; } ;
struct nfs4_openowner {TYPE_1__ oo_owner; int /*<<< orphan*/  oo_close_lru; int /*<<< orphan*/ * oo_last_closed_stid; scalar_t__ oo_time; int /*<<< orphan*/  oo_flags; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS4_OO_CONFIRMED ; 
 struct nfs4_openowner* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfs4_client*) ; 
 struct nfs4_openowner* FUNC2 (unsigned int,struct nfsd4_open*,struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_openowner*,struct nfs4_client*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (struct nfsd4_compound_state*) ; 
 int /*<<< orphan*/  openowner_ops ; 
 int /*<<< orphan*/  openowner_slab ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_openowner *
FUNC8(unsigned int strhashval, struct nfsd4_open *open,
			   struct nfsd4_compound_state *cstate)
{
	struct nfs4_client *clp = cstate->clp;
	struct nfs4_openowner *oo, *ret;

	oo = FUNC1(openowner_slab, &open->op_owner, clp);
	if (!oo)
		return NULL;
	oo->oo_owner.so_ops = &openowner_ops;
	oo->oo_owner.so_is_open_owner = 1;
	oo->oo_owner.so_seqid = open->op_seqid;
	oo->oo_flags = 0;
	if (FUNC5(cstate))
		oo->oo_flags |= NFS4_OO_CONFIRMED;
	oo->oo_time = 0;
	oo->oo_last_closed_stid = NULL;
	FUNC0(&oo->oo_close_lru);
	FUNC6(&clp->cl_lock);
	ret = FUNC2(strhashval, open, clp);
	if (ret == NULL) {
		FUNC3(oo, clp, strhashval);
		ret = oo;
	} else
		FUNC4(&oo->oo_owner);

	FUNC7(&clp->cl_lock);
	return ret;
}