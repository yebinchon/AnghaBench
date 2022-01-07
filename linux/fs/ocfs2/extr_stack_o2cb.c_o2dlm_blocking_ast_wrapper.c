
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_dlm_lksb {TYPE_2__* lksb_conn; } ;
struct TYPE_4__ {TYPE_1__* cc_proto; } ;
struct TYPE_3__ {int (* lp_blocking_ast ) (struct ocfs2_dlm_lksb*,int) ;} ;


 int stub1 (struct ocfs2_dlm_lksb*,int) ;

__attribute__((used)) static void o2dlm_blocking_ast_wrapper(void *astarg, int level)
{
 struct ocfs2_dlm_lksb *lksb = astarg;

 lksb->lksb_conn->cc_proto->lp_blocking_ast(lksb, level);
}
