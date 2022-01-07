
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int dummy; } ;
struct dlm_lock {int dummy; } ;
struct dlm_ctxt {int dummy; } ;


 int DLM_BAST ;
 int dlm_send_proxy_ast_msg (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int ,int,int ) ;

__attribute__((used)) static inline int dlm_send_proxy_bast(struct dlm_ctxt *dlm,
          struct dlm_lock_resource *res,
          struct dlm_lock *lock,
          int blocked_type)
{
 return dlm_send_proxy_ast_msg(dlm, res, lock, DLM_BAST,
          blocked_type, 0);
}
