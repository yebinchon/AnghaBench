
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int osb_dlm_debug; } ;
struct ocfs2_lock_res_ops {int dummy; } ;
struct TYPE_2__ {int * key; } ;
struct ocfs2_lock_res {int l_type; TYPE_1__ l_lockdep_map; int l_flags; int l_unlock_action; int l_action; void* l_blocking; void* l_requested; void* l_level; void* l_priv; struct ocfs2_lock_res_ops* l_ops; } ;
typedef enum ocfs2_lock_type { ____Placeholder_ocfs2_lock_type } ocfs2_lock_type ;


 void* DLM_LOCK_IV ;
 int OCFS2_AST_INVALID ;
 int OCFS2_LOCK_INITIALIZED ;
 int OCFS2_LOCK_TYPE_OPEN ;
 int OCFS2_UNLOCK_INVALID ;
 int lockdep_init_map (TYPE_1__*,int ,int *,int ) ;
 int * lockdep_keys ;
 int ocfs2_add_lockres_tracking (struct ocfs2_lock_res*,int ) ;
 int ocfs2_init_lock_stats (struct ocfs2_lock_res*) ;
 int * ocfs2_lock_type_strings ;

__attribute__((used)) static void ocfs2_lock_res_init_common(struct ocfs2_super *osb,
           struct ocfs2_lock_res *res,
           enum ocfs2_lock_type type,
           struct ocfs2_lock_res_ops *ops,
           void *priv)
{
 res->l_type = type;
 res->l_ops = ops;
 res->l_priv = priv;

 res->l_level = DLM_LOCK_IV;
 res->l_requested = DLM_LOCK_IV;
 res->l_blocking = DLM_LOCK_IV;
 res->l_action = OCFS2_AST_INVALID;
 res->l_unlock_action = OCFS2_UNLOCK_INVALID;

 res->l_flags = OCFS2_LOCK_INITIALIZED;

 ocfs2_add_lockres_tracking(res, osb->osb_dlm_debug);

 ocfs2_init_lock_stats(res);







}
