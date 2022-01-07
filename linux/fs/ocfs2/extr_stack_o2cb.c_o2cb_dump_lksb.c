
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lockid; } ;
struct ocfs2_dlm_lksb {TYPE_1__ lksb_o2dlm; } ;


 int dlm_print_one_lock (int ) ;

__attribute__((used)) static void o2cb_dump_lksb(struct ocfs2_dlm_lksb *lksb)
{
 dlm_print_one_lock(lksb->lksb_o2dlm.lockid);
}
