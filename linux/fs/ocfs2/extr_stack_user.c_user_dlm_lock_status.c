
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb_status; } ;
struct ocfs2_dlm_lksb {TYPE_1__ lksb_fsdlm; } ;



__attribute__((used)) static int user_dlm_lock_status(struct ocfs2_dlm_lksb *lksb)
{
 return lksb->lksb_fsdlm.sb_status;
}
