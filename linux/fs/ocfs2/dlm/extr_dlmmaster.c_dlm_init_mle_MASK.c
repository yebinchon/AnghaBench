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
struct dlm_master_list_entry {int type; unsigned int mnamelen; int /*<<< orphan*/  node_map; int /*<<< orphan*/  vote_map; int /*<<< orphan*/  mnamehash; int /*<<< orphan*/  mname; struct dlm_lock_resource* mleres; scalar_t__ inuse; void* new_master; void* master; int /*<<< orphan*/  response_map; int /*<<< orphan*/  mle_refs; int /*<<< orphan*/  woken; int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  maybe_map; int /*<<< orphan*/  hb_events; int /*<<< orphan*/  master_hash_node; struct dlm_ctxt* dlm; } ;
struct TYPE_2__ {char const* name; int len; int /*<<< orphan*/  hash; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct dlm_ctxt {char const* domain_map; int /*<<< orphan*/  node_num; int /*<<< orphan*/ * mle_cur_count; int /*<<< orphan*/ * mle_tot_count; int /*<<< orphan*/  spinlock; } ;
typedef  enum dlm_mle_type { ____Placeholder_dlm_mle_type } dlm_mle_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_MLE_BLOCK ; 
 int DLM_MLE_MASTER ; 
 int DLM_MLE_MIGRATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct dlm_master_list_entry *mle,
			enum dlm_mle_type type,
			struct dlm_ctxt *dlm,
			struct dlm_lock_resource *res,
			const char *name,
			unsigned int namelen)
{
	FUNC4(&dlm->spinlock);

	mle->dlm = dlm;
	mle->type = type;
	FUNC1(&mle->master_hash_node);
	FUNC2(&mle->hb_events);
	FUNC12(mle->maybe_map, 0, sizeof(mle->maybe_map));
	FUNC13(&mle->spinlock);
	FUNC9(&mle->wq);
	FUNC6(&mle->woken, 0);
	FUNC10(&mle->mle_refs);
	FUNC12(mle->response_map, 0, sizeof(mle->response_map));
	mle->master = O2NM_MAX_NODES;
	mle->new_master = O2NM_MAX_NODES;
	mle->inuse = 0;

	FUNC0(mle->type != DLM_MLE_BLOCK &&
	       mle->type != DLM_MLE_MASTER &&
	       mle->type != DLM_MLE_MIGRATION);

	if (mle->type == DLM_MLE_MASTER) {
		FUNC0(!res);
		mle->mleres = res;
		FUNC11(mle->mname, res->lockname.name, res->lockname.len);
		mle->mnamelen = res->lockname.len;
		mle->mnamehash = res->lockname.hash;
	} else {
		FUNC0(!name);
		mle->mleres = NULL;
		FUNC11(mle->mname, name, namelen);
		mle->mnamelen = namelen;
		mle->mnamehash = FUNC8(name, namelen);
	}

	FUNC5(&dlm->mle_tot_count[mle->type]);
	FUNC5(&dlm->mle_cur_count[mle->type]);

	/* copy off the node_map and register hb callbacks on our copy */
	FUNC11(mle->node_map, dlm->domain_map, sizeof(mle->node_map));
	FUNC11(mle->vote_map, dlm->domain_map, sizeof(mle->vote_map));
	FUNC7(dlm->node_num, mle->vote_map);
	FUNC7(dlm->node_num, mle->node_map);

	/* attach the mle to the domain node up/down events */
	FUNC3(dlm, mle);
}