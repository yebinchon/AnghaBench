
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_reco_data_done {int dummy; } ;
struct dlm_migrate_request {int dummy; } ;
struct dlm_master_request {int dummy; } ;
struct dlm_master_requery {int dummy; } ;
struct dlm_lock_request {int dummy; } ;
struct dlm_finalize_reco {int dummy; } ;
struct dlm_exit_domain {int dummy; } ;
struct dlm_deref_lockres_done {int dummy; } ;
struct dlm_deref_lockres {int dummy; } ;
struct dlm_ctxt {int dlm_domain_handlers; int key; int dlm_hb_up; int name; int dlm_hb_down; } ;
struct dlm_create_lock {int dummy; } ;
struct dlm_begin_reco {int dummy; } ;
struct dlm_assert_master {int dummy; } ;


 int DLM_ASSERT_MASTER_MSG ;
 int DLM_BEGIN_EXIT_DOMAIN_MSG ;
 int DLM_BEGIN_RECO_MSG ;
 int DLM_CONVERT_LOCK_MAX_LEN ;
 int DLM_CONVERT_LOCK_MSG ;
 int DLM_CREATE_LOCK_MSG ;
 int DLM_DEREF_LOCKRES_DONE ;
 int DLM_DEREF_LOCKRES_MSG ;
 int DLM_EXIT_DOMAIN_MSG ;
 int DLM_FINALIZE_RECO_MSG ;
 int DLM_HB_NODE_DOWN_PRI ;
 int DLM_HB_NODE_UP_PRI ;
 int DLM_LOCK_REQUEST_MSG ;
 int DLM_MASTER_REQUERY_MSG ;
 int DLM_MASTER_REQUEST_MSG ;
 int DLM_MIGRATE_REQUEST_MSG ;
 int DLM_MIG_LOCKRES_MAX_LEN ;
 int DLM_MIG_LOCKRES_MSG ;
 int DLM_PROXY_AST_MAX_LEN ;
 int DLM_PROXY_AST_MSG ;
 int DLM_RECO_DATA_DONE_MSG ;
 int DLM_UNLOCK_LOCK_MAX_LEN ;
 int DLM_UNLOCK_LOCK_MSG ;
 int O2HB_NODE_DOWN_CB ;
 int O2HB_NODE_UP_CB ;
 int dlm_assert_master_handler ;
 int * dlm_assert_master_post_handler ;
 int dlm_begin_exit_domain_handler ;
 int dlm_begin_reco_handler ;
 int dlm_convert_lock_handler ;
 int dlm_create_lock_handler ;
 int dlm_deref_lockres_done_handler ;
 int dlm_deref_lockres_handler ;
 int dlm_exit_domain_handler ;
 int dlm_finalize_reco_handler ;
 int dlm_hb_node_down_cb ;
 int dlm_hb_node_up_cb ;
 int dlm_master_requery_handler ;
 int dlm_master_request_handler ;
 int dlm_mig_lockres_handler ;
 int dlm_migrate_request_handler ;
 int dlm_proxy_ast_handler ;
 int dlm_reco_data_done_handler ;
 int dlm_request_all_locks_handler ;
 int dlm_unlock_lock_handler ;
 int dlm_unregister_domain_handlers (struct dlm_ctxt*) ;
 int mlog (int ,char*) ;
 int o2hb_register_callback (int ,int *) ;
 int o2hb_setup_callback (int *,int ,int ,struct dlm_ctxt*,int ) ;
 int o2net_register_handler (int ,int ,int,int ,struct dlm_ctxt*,int *,int *) ;

__attribute__((used)) static int dlm_register_domain_handlers(struct dlm_ctxt *dlm)
{
 int status;

 mlog(0, "registering handlers.\n");

 o2hb_setup_callback(&dlm->dlm_hb_down, O2HB_NODE_DOWN_CB,
       dlm_hb_node_down_cb, dlm, DLM_HB_NODE_DOWN_PRI);
 o2hb_setup_callback(&dlm->dlm_hb_up, O2HB_NODE_UP_CB,
       dlm_hb_node_up_cb, dlm, DLM_HB_NODE_UP_PRI);

 status = o2hb_register_callback(dlm->name, &dlm->dlm_hb_down);
 if (status)
  goto bail;

 status = o2hb_register_callback(dlm->name, &dlm->dlm_hb_up);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_MASTER_REQUEST_MSG, dlm->key,
     sizeof(struct dlm_master_request),
     dlm_master_request_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_ASSERT_MASTER_MSG, dlm->key,
     sizeof(struct dlm_assert_master),
     dlm_assert_master_handler,
     dlm, dlm_assert_master_post_handler,
     &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_CREATE_LOCK_MSG, dlm->key,
     sizeof(struct dlm_create_lock),
     dlm_create_lock_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_CONVERT_LOCK_MSG, dlm->key,
     DLM_CONVERT_LOCK_MAX_LEN,
     dlm_convert_lock_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_UNLOCK_LOCK_MSG, dlm->key,
     DLM_UNLOCK_LOCK_MAX_LEN,
     dlm_unlock_lock_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_PROXY_AST_MSG, dlm->key,
     DLM_PROXY_AST_MAX_LEN,
     dlm_proxy_ast_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_EXIT_DOMAIN_MSG, dlm->key,
     sizeof(struct dlm_exit_domain),
     dlm_exit_domain_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_DEREF_LOCKRES_MSG, dlm->key,
     sizeof(struct dlm_deref_lockres),
     dlm_deref_lockres_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_MIGRATE_REQUEST_MSG, dlm->key,
     sizeof(struct dlm_migrate_request),
     dlm_migrate_request_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_MIG_LOCKRES_MSG, dlm->key,
     DLM_MIG_LOCKRES_MAX_LEN,
     dlm_mig_lockres_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_MASTER_REQUERY_MSG, dlm->key,
     sizeof(struct dlm_master_requery),
     dlm_master_requery_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_LOCK_REQUEST_MSG, dlm->key,
     sizeof(struct dlm_lock_request),
     dlm_request_all_locks_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_RECO_DATA_DONE_MSG, dlm->key,
     sizeof(struct dlm_reco_data_done),
     dlm_reco_data_done_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_BEGIN_RECO_MSG, dlm->key,
     sizeof(struct dlm_begin_reco),
     dlm_begin_reco_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_FINALIZE_RECO_MSG, dlm->key,
     sizeof(struct dlm_finalize_reco),
     dlm_finalize_reco_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_BEGIN_EXIT_DOMAIN_MSG, dlm->key,
     sizeof(struct dlm_exit_domain),
     dlm_begin_exit_domain_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
 if (status)
  goto bail;

 status = o2net_register_handler(DLM_DEREF_LOCKRES_DONE, dlm->key,
     sizeof(struct dlm_deref_lockres_done),
     dlm_deref_lockres_done_handler,
     dlm, ((void*)0), &dlm->dlm_domain_handlers);
bail:
 if (status)
  dlm_unregister_domain_handlers(dlm);

 return status;
}
