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
struct hlist_head {int dummy; } ;
struct TYPE_2__ {void* dead_node; void* new_master; int /*<<< orphan*/  event; scalar_t__ state; int /*<<< orphan*/  node_data; int /*<<< orphan*/  resources; } ;
struct dlm_ctxt {struct dlm_ctxt* name; struct hlist_head** lockres_hash; struct hlist_head** master_hash; int /*<<< orphan*/  dlm_refs; int /*<<< orphan*/  dlm_eviction_callbacks; int /*<<< orphan*/  dlm_state; int /*<<< orphan*/  dispatched_work; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_lock; int /*<<< orphan*/ * mle_cur_count; int /*<<< orphan*/ * mle_tot_count; int /*<<< orphan*/  res_cur_count; int /*<<< orphan*/  res_tot_count; TYPE_1__ reco; scalar_t__ migrate_done; int /*<<< orphan*/  dlm_join_events; int /*<<< orphan*/  joining_node; int /*<<< orphan*/  mle_hb_events; int /*<<< orphan*/  migration_wq; int /*<<< orphan*/  ast_wq; int /*<<< orphan*/  dlm_reco_thread_wq; int /*<<< orphan*/  dlm_thread_wq; int /*<<< orphan*/ * dlm_worker; int /*<<< orphan*/ * dlm_reco_thread_task; int /*<<< orphan*/ * dlm_thread_task; int /*<<< orphan*/ * domain_map; int /*<<< orphan*/ * live_nodes_map; int /*<<< orphan*/ * recovery_map; int /*<<< orphan*/  pending_basts; int /*<<< orphan*/  pending_asts; int /*<<< orphan*/  tracking_list; int /*<<< orphan*/  dlm_domain_handlers; int /*<<< orphan*/  purge_list; int /*<<< orphan*/  dirty_list; int /*<<< orphan*/  list; int /*<<< orphan*/  track_lock; int /*<<< orphan*/  ast_lock; int /*<<< orphan*/  master_lock; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  node_num; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_CTXT_NEW ; 
 int DLM_HASH_BUCKETS ; 
 int /*<<< orphan*/  DLM_HASH_PAGES ; 
 int /*<<< orphan*/  DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int DLM_MLE_NUM_TYPES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* O2NM_INVALID_NODE_NUM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  dlm_dispatch_work ; 
 int /*<<< orphan*/  FUNC6 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_ctxt*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_ctxt*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct dlm_ctxt* FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 struct dlm_ctxt* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dlm_ctxt *FUNC20(const char *domain,
				u32 key)
{
	int i;
	int ret;
	struct dlm_ctxt *dlm = NULL;

	dlm = FUNC14(sizeof(*dlm), GFP_KERNEL);
	if (!dlm) {
		ret = -ENOMEM;
		FUNC17(ret);
		goto leave;
	}

	dlm->name = FUNC13(domain, GFP_KERNEL);
	if (dlm->name == NULL) {
		ret = -ENOMEM;
		FUNC17(ret);
		goto leave;
	}

	dlm->lockres_hash = (struct hlist_head **)FUNC4(DLM_HASH_PAGES);
	if (!dlm->lockres_hash) {
		ret = -ENOMEM;
		FUNC17(ret);
		goto leave;
	}

	for (i = 0; i < DLM_HASH_BUCKETS; i++)
		FUNC0(FUNC7(dlm, i));

	dlm->master_hash = (struct hlist_head **)
				FUNC4(DLM_HASH_PAGES);
	if (!dlm->master_hash) {
		ret = -ENOMEM;
		FUNC17(ret);
		goto leave;
	}

	for (i = 0; i < DLM_HASH_BUCKETS; i++)
		FUNC0(FUNC8(dlm, i));

	dlm->key = key;
	dlm->node_num = FUNC18();

	FUNC5(dlm);

	FUNC19(&dlm->spinlock);
	FUNC19(&dlm->master_lock);
	FUNC19(&dlm->ast_lock);
	FUNC19(&dlm->track_lock);
	FUNC1(&dlm->list);
	FUNC1(&dlm->dirty_list);
	FUNC1(&dlm->reco.resources);
	FUNC1(&dlm->reco.node_data);
	FUNC1(&dlm->purge_list);
	FUNC1(&dlm->dlm_domain_handlers);
	FUNC1(&dlm->tracking_list);
	dlm->reco.state = 0;

	FUNC1(&dlm->pending_asts);
	FUNC1(&dlm->pending_basts);

	FUNC16(0, "dlm->recovery_map=%p, &(dlm->recovery_map[0])=%p\n",
		  *dlm->recovery_map, &(dlm->recovery_map[0]));

	FUNC15(dlm->recovery_map, 0, sizeof(dlm->recovery_map));
	FUNC15(dlm->live_nodes_map, 0, sizeof(dlm->live_nodes_map));
	FUNC15(dlm->domain_map, 0, sizeof(dlm->domain_map));

	dlm->dlm_thread_task = NULL;
	dlm->dlm_reco_thread_task = NULL;
	dlm->dlm_worker = NULL;
	FUNC9(&dlm->dlm_thread_wq);
	FUNC9(&dlm->dlm_reco_thread_wq);
	FUNC9(&dlm->reco.event);
	FUNC9(&dlm->ast_wq);
	FUNC9(&dlm->migration_wq);
	FUNC1(&dlm->mle_hb_events);

	dlm->joining_node = DLM_LOCK_RES_OWNER_UNKNOWN;
	FUNC9(&dlm->dlm_join_events);

	dlm->migrate_done = 0;

	dlm->reco.new_master = O2NM_INVALID_NODE_NUM;
	dlm->reco.dead_node = O2NM_INVALID_NODE_NUM;

	FUNC3(&dlm->res_tot_count, 0);
	FUNC3(&dlm->res_cur_count, 0);
	for (i = 0; i < DLM_MLE_NUM_TYPES; ++i) {
		FUNC3(&dlm->mle_tot_count[i], 0);
		FUNC3(&dlm->mle_cur_count[i], 0);
	}

	FUNC19(&dlm->work_lock);
	FUNC1(&dlm->work_list);
	FUNC2(&dlm->dispatched_work, dlm_dispatch_work);

	FUNC11(&dlm->dlm_refs);
	dlm->dlm_state = DLM_CTXT_NEW;

	FUNC1(&dlm->dlm_eviction_callbacks);

	FUNC16(0, "context init: refcount %u\n",
		  FUNC12(&dlm->dlm_refs));

	ret = 0;
leave:
	if (ret < 0 && dlm) {
		if (dlm->master_hash)
			FUNC6((void **)dlm->master_hash,
					DLM_HASH_PAGES);

		if (dlm->lockres_hash)
			FUNC6((void **)dlm->lockres_hash,
					DLM_HASH_PAGES);

		FUNC10(dlm->name);
		FUNC10(dlm);
		dlm = NULL;
	}
	return dlm;
}