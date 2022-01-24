#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nfs4_stid {int dummy; } ;
struct TYPE_4__ {struct nfs4_file* sc_file; int /*<<< orphan*/  sc_stateid; struct nfs4_client* sc_client; } ;
struct nfs4_layout_stateid {size_t ls_layout_type; TYPE_1__ ls_stid; scalar_t__ ls_recalled; TYPE_2__* ls_file; int /*<<< orphan*/  ls_perfile; int /*<<< orphan*/  ls_perclnt; } ;
struct nfs4_file {int /*<<< orphan*/  fi_lo_recalls; int /*<<< orphan*/  fi_lock; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  disable_recalls; } ;
struct TYPE_5__ {int /*<<< orphan*/  nf_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nfs4_layout_stateid*) ; 
 struct nfs4_layout_stateid* FUNC2 (struct nfs4_stid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs4_layout_stateid_cache ; 
 TYPE_3__** nfsd4_layout_ops ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static void
FUNC9(struct nfs4_stid *stid)
{
	struct nfs4_layout_stateid *ls = FUNC2(stid);
	struct nfs4_client *clp = ls->ls_stid.sc_client;
	struct nfs4_file *fp = ls->ls_stid.sc_file;

	FUNC7(&ls->ls_stid.sc_stateid);

	FUNC5(&clp->cl_lock);
	FUNC3(&ls->ls_perclnt);
	FUNC6(&clp->cl_lock);

	FUNC5(&fp->fi_lock);
	FUNC3(&ls->ls_perfile);
	FUNC6(&fp->fi_lock);

	if (!nfsd4_layout_ops[ls->ls_layout_type]->disable_recalls)
		FUNC8(ls->ls_file->nf_file, F_UNLCK, NULL, (void **)&ls);
	FUNC4(ls->ls_file);

	if (ls->ls_recalled)
		FUNC0(&ls->ls_stid.sc_file->fi_lo_recalls);

	FUNC1(nfs4_layout_stateid_cache, ls);
}