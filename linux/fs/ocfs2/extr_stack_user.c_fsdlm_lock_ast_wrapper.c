
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sb_status; } ;
struct ocfs2_dlm_lksb {TYPE_3__* lksb_conn; TYPE_1__ lksb_fsdlm; } ;
struct TYPE_6__ {TYPE_2__* cc_proto; } ;
struct TYPE_5__ {int (* lp_lock_ast ) (struct ocfs2_dlm_lksb*) ;int (* lp_unlock_ast ) (struct ocfs2_dlm_lksb*,int ) ;} ;


 int DLM_ECANCEL ;
 int DLM_EUNLOCK ;
 int stub1 (struct ocfs2_dlm_lksb*,int ) ;
 int stub2 (struct ocfs2_dlm_lksb*) ;

__attribute__((used)) static void fsdlm_lock_ast_wrapper(void *astarg)
{
 struct ocfs2_dlm_lksb *lksb = astarg;
 int status = lksb->lksb_fsdlm.sb_status;
 if (status == -DLM_EUNLOCK || status == -DLM_ECANCEL)
  lksb->lksb_conn->cc_proto->lp_unlock_ast(lksb, 0);
 else
  lksb->lksb_conn->cc_proto->lp_lock_ast(lksb);
}
