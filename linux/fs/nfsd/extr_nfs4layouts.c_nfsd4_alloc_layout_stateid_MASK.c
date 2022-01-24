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
typedef  int /*<<< orphan*/  u32 ;
struct nfsd4_compound_state {struct nfs4_client* clp; } ;
struct nfs4_stid {scalar_t__ sc_type; struct nfs4_file* sc_file; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_stateid; } ;
struct nfs4_layout_stateid {TYPE_1__ ls_stid; int /*<<< orphan*/  ls_perfile; int /*<<< orphan*/  ls_perclnt; int /*<<< orphan*/  ls_file; int /*<<< orphan*/  ls_recall; int /*<<< orphan*/  ls_layout_type; int /*<<< orphan*/  ls_mutex; int /*<<< orphan*/  ls_layouts; int /*<<< orphan*/  ls_lock; } ;
struct nfs4_file {int /*<<< orphan*/  fi_lock; int /*<<< orphan*/  fi_lo_states; int /*<<< orphan*/  fi_deleg_file; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_lo_states; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ NFS4_DELEG_STID ; 
 scalar_t__ NFS4_LAYOUT_STID ; 
 int /*<<< orphan*/  NFSPROC4_CLNT_CB_LAYOUT ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nfs4_layout_stateid*) ; 
 struct nfs4_layout_stateid* FUNC5 (struct nfs4_stid*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct nfs4_stid* FUNC8 (struct nfs4_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs4_layout_stateid_cache ; 
 int /*<<< orphan*/  nfsd4_cb_layout_ops ; 
 int /*<<< orphan*/  nfsd4_free_layout_stateid ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct nfs4_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct nfs4_layout_stateid*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs4_file*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_layout_stateid *
FUNC18(struct nfsd4_compound_state *cstate,
		struct nfs4_stid *parent, u32 layout_type)
{
	struct nfs4_client *clp = cstate->clp;
	struct nfs4_file *fp = parent->sc_file;
	struct nfs4_layout_stateid *ls;
	struct nfs4_stid *stp;

	stp = FUNC8(cstate->clp, nfs4_layout_stateid_cache,
					nfsd4_free_layout_stateid);
	if (!stp)
		return NULL;

	FUNC3(fp);
	stp->sc_file = fp;

	ls = FUNC5(stp);
	FUNC1(&ls->ls_perclnt);
	FUNC1(&ls->ls_perfile);
	FUNC15(&ls->ls_lock);
	FUNC1(&ls->ls_layouts);
	FUNC7(&ls->ls_mutex);
	ls->ls_layout_type = layout_type;
	FUNC9(&ls->ls_recall, clp, &nfsd4_cb_layout_ops,
			NFSPROC4_CLNT_CB_LAYOUT);

	if (parent->sc_type == NFS4_DELEG_STID)
		ls->ls_file = FUNC11(fp->fi_deleg_file);
	else
		ls->ls_file = FUNC2(fp);
	FUNC0(!ls->ls_file);

	if (FUNC10(ls)) {
		FUNC12(ls->ls_file);
		FUNC13(fp);
		FUNC4(nfs4_layout_stateid_cache, ls);
		return NULL;
	}

	FUNC14(&clp->cl_lock);
	stp->sc_type = NFS4_LAYOUT_STID;
	FUNC6(&ls->ls_perclnt, &clp->cl_lo_states);
	FUNC16(&clp->cl_lock);

	FUNC14(&fp->fi_lock);
	FUNC6(&ls->ls_perfile, &fp->fi_lo_states);
	FUNC16(&fp->fi_lock);

	FUNC17(&ls->ls_stid.sc_stateid);
	return ls;
}