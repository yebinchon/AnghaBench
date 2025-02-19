
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char* sb_lvbptr; } ;
struct ocfs2_dlm_lksb {TYPE_1__ lksb_fsdlm; } ;
struct ocfs2_cluster_connection {int cc_lockspace; } ;
struct dlm_lksb {int dummy; } ;


 int DLM_LKF_NODLCKWT ;
 int dlm_lock (int ,int,TYPE_1__*,int,void*,unsigned int,int ,int ,struct ocfs2_dlm_lksb*,int ) ;
 int fsdlm_blocking_ast_wrapper ;
 int fsdlm_lock_ast_wrapper ;

__attribute__((used)) static int user_dlm_lock(struct ocfs2_cluster_connection *conn,
    int mode,
    struct ocfs2_dlm_lksb *lksb,
    u32 flags,
    void *name,
    unsigned int namelen)
{
 int ret;

 if (!lksb->lksb_fsdlm.sb_lvbptr)
  lksb->lksb_fsdlm.sb_lvbptr = (char *)lksb +
          sizeof(struct dlm_lksb);

 ret = dlm_lock(conn->cc_lockspace, mode, &lksb->lksb_fsdlm,
         flags|DLM_LKF_NODLCKWT, name, namelen, 0,
         fsdlm_lock_ast_wrapper, lksb,
         fsdlm_blocking_ast_wrapper);
 return ret;
}
