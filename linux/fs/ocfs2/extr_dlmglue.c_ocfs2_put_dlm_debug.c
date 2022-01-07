
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dlm_debug {int d_refcnt; } ;


 int kref_put (int *,int ) ;
 int ocfs2_dlm_debug_free ;

void ocfs2_put_dlm_debug(struct ocfs2_dlm_debug *dlm_debug)
{
 if (dlm_debug)
  kref_put(&dlm_debug->d_refcnt, ocfs2_dlm_debug_free);
}
