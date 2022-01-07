
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct ocfs2_dlm_debug* osb_dlm_debug; } ;
struct ocfs2_dlm_debug {int dummy; } ;


 int ocfs2_put_dlm_debug (struct ocfs2_dlm_debug*) ;

__attribute__((used)) static void ocfs2_dlm_shutdown_debug(struct ocfs2_super *osb)
{
 struct ocfs2_dlm_debug *dlm_debug = osb->osb_dlm_debug;

 if (dlm_debug)
  ocfs2_put_dlm_debug(dlm_debug);
}
