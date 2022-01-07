
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_dentry_lock {int dummy; } ;


 int ocfs2_dentry_lock_put (struct ocfs2_super*,struct ocfs2_dentry_lock*) ;
 struct ocfs2_dentry_lock* ocfs2_lock_res_dl (struct ocfs2_lock_res*) ;

__attribute__((used)) static void ocfs2_dentry_post_unlock(struct ocfs2_super *osb,
         struct ocfs2_lock_res *lockres)
{
 struct ocfs2_dentry_lock *dl = ocfs2_lock_res_dl(lockres);
 ocfs2_dentry_lock_put(osb, dl);
}
