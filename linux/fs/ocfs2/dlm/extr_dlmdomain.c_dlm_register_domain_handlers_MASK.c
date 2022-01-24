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
struct dlm_reco_data_done {int dummy; } ;
struct dlm_migrate_request {int dummy; } ;
struct dlm_master_request {int dummy; } ;
struct dlm_master_requery {int dummy; } ;
struct dlm_lock_request {int dummy; } ;
struct dlm_finalize_reco {int dummy; } ;
struct dlm_exit_domain {int dummy; } ;
struct dlm_deref_lockres_done {int dummy; } ;
struct dlm_deref_lockres {int dummy; } ;
struct dlm_ctxt {int /*<<< orphan*/  dlm_domain_handlers; int /*<<< orphan*/  key; int /*<<< orphan*/  dlm_hb_up; int /*<<< orphan*/  name; int /*<<< orphan*/  dlm_hb_down; } ;
struct dlm_create_lock {int dummy; } ;
struct dlm_begin_reco {int dummy; } ;
struct dlm_assert_master {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_ASSERT_MASTER_MSG ; 
 int /*<<< orphan*/  DLM_BEGIN_EXIT_DOMAIN_MSG ; 
 int /*<<< orphan*/  DLM_BEGIN_RECO_MSG ; 
 int DLM_CONVERT_LOCK_MAX_LEN ; 
 int /*<<< orphan*/  DLM_CONVERT_LOCK_MSG ; 
 int /*<<< orphan*/  DLM_CREATE_LOCK_MSG ; 
 int /*<<< orphan*/  DLM_DEREF_LOCKRES_DONE ; 
 int /*<<< orphan*/  DLM_DEREF_LOCKRES_MSG ; 
 int /*<<< orphan*/  DLM_EXIT_DOMAIN_MSG ; 
 int /*<<< orphan*/  DLM_FINALIZE_RECO_MSG ; 
 int /*<<< orphan*/  DLM_HB_NODE_DOWN_PRI ; 
 int /*<<< orphan*/  DLM_HB_NODE_UP_PRI ; 
 int /*<<< orphan*/  DLM_LOCK_REQUEST_MSG ; 
 int /*<<< orphan*/  DLM_MASTER_REQUERY_MSG ; 
 int /*<<< orphan*/  DLM_MASTER_REQUEST_MSG ; 
 int /*<<< orphan*/  DLM_MIGRATE_REQUEST_MSG ; 
 int DLM_MIG_LOCKRES_MAX_LEN ; 
 int /*<<< orphan*/  DLM_MIG_LOCKRES_MSG ; 
 int DLM_PROXY_AST_MAX_LEN ; 
 int /*<<< orphan*/  DLM_PROXY_AST_MSG ; 
 int /*<<< orphan*/  DLM_RECO_DATA_DONE_MSG ; 
 int DLM_UNLOCK_LOCK_MAX_LEN ; 
 int /*<<< orphan*/  DLM_UNLOCK_LOCK_MSG ; 
 int /*<<< orphan*/  O2HB_NODE_DOWN_CB ; 
 int /*<<< orphan*/  O2HB_NODE_UP_CB ; 
 int /*<<< orphan*/  dlm_assert_master_handler ; 
 int /*<<< orphan*/ * dlm_assert_master_post_handler ; 
 int /*<<< orphan*/  dlm_begin_exit_domain_handler ; 
 int /*<<< orphan*/  dlm_begin_reco_handler ; 
 int /*<<< orphan*/  dlm_convert_lock_handler ; 
 int /*<<< orphan*/  dlm_create_lock_handler ; 
 int /*<<< orphan*/  dlm_deref_lockres_done_handler ; 
 int /*<<< orphan*/  dlm_deref_lockres_handler ; 
 int /*<<< orphan*/  dlm_exit_domain_handler ; 
 int /*<<< orphan*/  dlm_finalize_reco_handler ; 
 int /*<<< orphan*/  dlm_hb_node_down_cb ; 
 int /*<<< orphan*/  dlm_hb_node_up_cb ; 
 int /*<<< orphan*/  dlm_master_requery_handler ; 
 int /*<<< orphan*/  dlm_master_request_handler ; 
 int /*<<< orphan*/  dlm_mig_lockres_handler ; 
 int /*<<< orphan*/  dlm_migrate_request_handler ; 
 int /*<<< orphan*/  dlm_proxy_ast_handler ; 
 int /*<<< orphan*/  dlm_reco_data_done_handler ; 
 int /*<<< orphan*/  dlm_request_all_locks_handler ; 
 int /*<<< orphan*/  dlm_unlock_lock_handler ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_ctxt*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct dlm_ctxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dlm_ctxt *dlm)
{
	int status;

	FUNC1(0, "registering handlers.\n");

	FUNC3(&dlm->dlm_hb_down, O2HB_NODE_DOWN_CB,
			    dlm_hb_node_down_cb, dlm, DLM_HB_NODE_DOWN_PRI);
	FUNC3(&dlm->dlm_hb_up, O2HB_NODE_UP_CB,
			    dlm_hb_node_up_cb, dlm, DLM_HB_NODE_UP_PRI);

	status = FUNC2(dlm->name, &dlm->dlm_hb_down);
	if (status)
		goto bail;

	status = FUNC2(dlm->name, &dlm->dlm_hb_up);
	if (status)
		goto bail;

	status = FUNC4(DLM_MASTER_REQUEST_MSG, dlm->key,
					sizeof(struct dlm_master_request),
					dlm_master_request_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_ASSERT_MASTER_MSG, dlm->key,
					sizeof(struct dlm_assert_master),
					dlm_assert_master_handler,
					dlm, dlm_assert_master_post_handler,
					&dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_CREATE_LOCK_MSG, dlm->key,
					sizeof(struct dlm_create_lock),
					dlm_create_lock_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_CONVERT_LOCK_MSG, dlm->key,
					DLM_CONVERT_LOCK_MAX_LEN,
					dlm_convert_lock_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_UNLOCK_LOCK_MSG, dlm->key,
					DLM_UNLOCK_LOCK_MAX_LEN,
					dlm_unlock_lock_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_PROXY_AST_MSG, dlm->key,
					DLM_PROXY_AST_MAX_LEN,
					dlm_proxy_ast_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_EXIT_DOMAIN_MSG, dlm->key,
					sizeof(struct dlm_exit_domain),
					dlm_exit_domain_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_DEREF_LOCKRES_MSG, dlm->key,
					sizeof(struct dlm_deref_lockres),
					dlm_deref_lockres_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_MIGRATE_REQUEST_MSG, dlm->key,
					sizeof(struct dlm_migrate_request),
					dlm_migrate_request_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_MIG_LOCKRES_MSG, dlm->key,
					DLM_MIG_LOCKRES_MAX_LEN,
					dlm_mig_lockres_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_MASTER_REQUERY_MSG, dlm->key,
					sizeof(struct dlm_master_requery),
					dlm_master_requery_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_LOCK_REQUEST_MSG, dlm->key,
					sizeof(struct dlm_lock_request),
					dlm_request_all_locks_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_RECO_DATA_DONE_MSG, dlm->key,
					sizeof(struct dlm_reco_data_done),
					dlm_reco_data_done_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_BEGIN_RECO_MSG, dlm->key,
					sizeof(struct dlm_begin_reco),
					dlm_begin_reco_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_FINALIZE_RECO_MSG, dlm->key,
					sizeof(struct dlm_finalize_reco),
					dlm_finalize_reco_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_BEGIN_EXIT_DOMAIN_MSG, dlm->key,
					sizeof(struct dlm_exit_domain),
					dlm_begin_exit_domain_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
	if (status)
		goto bail;

	status = FUNC4(DLM_DEREF_LOCKRES_DONE, dlm->key,
					sizeof(struct dlm_deref_lockres_done),
					dlm_deref_lockres_done_handler,
					dlm, NULL, &dlm->dlm_domain_handlers);
bail:
	if (status)
		FUNC0(dlm);

	return status;
}