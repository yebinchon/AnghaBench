
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_debug_list; int l_name; } ;
struct ocfs2_dlm_debug {int d_lockres_tracking; } ;


 int list_add (int *,int *) ;
 int mlog (int ,char*,int ) ;
 int ocfs2_dlm_tracking_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocfs2_add_lockres_tracking(struct ocfs2_lock_res *res,
           struct ocfs2_dlm_debug *dlm_debug)
{
 mlog(0, "Add tracking for lockres %s\n", res->l_name);

 spin_lock(&ocfs2_dlm_tracking_lock);
 list_add(&res->l_debug_list, &dlm_debug->d_lockres_tracking);
 spin_unlock(&ocfs2_dlm_tracking_lock);
}
