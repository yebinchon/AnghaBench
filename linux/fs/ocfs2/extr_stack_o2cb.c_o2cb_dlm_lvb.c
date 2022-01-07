
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lvb; } ;
struct ocfs2_dlm_lksb {TYPE_1__ lksb_o2dlm; } ;



__attribute__((used)) static void *o2cb_dlm_lvb(struct ocfs2_dlm_lksb *lksb)
{
 return (void *)(lksb->lksb_o2dlm.lvb);
}
