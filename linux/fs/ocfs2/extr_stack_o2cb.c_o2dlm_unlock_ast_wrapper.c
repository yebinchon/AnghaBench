
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_dlm_lksb {TYPE_2__* lksb_conn; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;
struct TYPE_4__ {TYPE_1__* cc_proto; } ;
struct TYPE_3__ {int (* lp_unlock_ast ) (struct ocfs2_dlm_lksb*,int) ;} ;


 int DLM_CANCELGRANT ;
 int dlm_status_to_errno (int) ;
 int stub1 (struct ocfs2_dlm_lksb*,int) ;

__attribute__((used)) static void o2dlm_unlock_ast_wrapper(void *astarg, enum dlm_status status)
{
 struct ocfs2_dlm_lksb *lksb = astarg;
 int error = dlm_status_to_errno(status);
 if (status == DLM_CANCELGRANT)
  return;

 lksb->lksb_conn->cc_proto->lp_unlock_ast(lksb, error);
}
