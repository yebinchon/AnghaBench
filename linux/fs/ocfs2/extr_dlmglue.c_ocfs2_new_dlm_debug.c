
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dlm_debug {scalar_t__ d_filter_secs; int d_lockres_tracking; int d_refcnt; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct ocfs2_dlm_debug* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int mlog_errno (int ) ;

struct ocfs2_dlm_debug *ocfs2_new_dlm_debug(void)
{
 struct ocfs2_dlm_debug *dlm_debug;

 dlm_debug = kmalloc(sizeof(struct ocfs2_dlm_debug), GFP_KERNEL);
 if (!dlm_debug) {
  mlog_errno(-ENOMEM);
  goto out;
 }

 kref_init(&dlm_debug->d_refcnt);
 INIT_LIST_HEAD(&dlm_debug->d_lockres_tracking);
 dlm_debug->d_filter_secs = 0;
out:
 return dlm_debug;
}
