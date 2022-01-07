
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_super {int obs_trim_fs_mutex; struct ocfs2_lock_res osb_trim_fs_lockres; } ;


 int mutex_unlock (int *) ;
 int ocfs2_lock_res_free (struct ocfs2_lock_res*) ;
 int ocfs2_simple_drop_lockres (struct ocfs2_super*,struct ocfs2_lock_res*) ;

void ocfs2_trim_fs_lock_res_uninit(struct ocfs2_super *osb)
{
 struct ocfs2_lock_res *lockres = &osb->osb_trim_fs_lockres;

 ocfs2_simple_drop_lockres(osb, lockres);
 ocfs2_lock_res_free(lockres);

 mutex_unlock(&osb->obs_trim_fs_mutex);
}
