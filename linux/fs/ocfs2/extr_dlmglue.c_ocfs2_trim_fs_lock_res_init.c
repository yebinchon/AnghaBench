
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_name; } ;
struct ocfs2_super {int obs_trim_fs_mutex; struct ocfs2_lock_res osb_trim_fs_lockres; } ;


 int OCFS2_LOCK_TYPE_TRIM_FS ;
 int mutex_lock (int *) ;
 int ocfs2_build_lock_name (int ,int ,int ,int ) ;
 int ocfs2_lock_res_init_common (struct ocfs2_super*,struct ocfs2_lock_res*,int ,int *,struct ocfs2_super*) ;
 int ocfs2_lock_res_init_once (struct ocfs2_lock_res*) ;
 int ocfs2_trim_fs_lops ;

void ocfs2_trim_fs_lock_res_init(struct ocfs2_super *osb)
{
 struct ocfs2_lock_res *lockres = &osb->osb_trim_fs_lockres;


 mutex_lock(&osb->obs_trim_fs_mutex);

 ocfs2_lock_res_init_once(lockres);
 ocfs2_build_lock_name(OCFS2_LOCK_TYPE_TRIM_FS, 0, 0, lockres->l_name);
 ocfs2_lock_res_init_common(osb, lockres, OCFS2_LOCK_TYPE_TRIM_FS,
       &ocfs2_trim_fs_lops, osb);
}
