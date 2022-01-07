
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {scalar_t__ l_type; scalar_t__ l_priv; } ;
struct ocfs2_dentry_lock {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ OCFS2_LOCK_TYPE_DENTRY ;

__attribute__((used)) static inline struct ocfs2_dentry_lock *ocfs2_lock_res_dl(struct ocfs2_lock_res *lockres)
{
 BUG_ON(lockres->l_type != OCFS2_LOCK_TYPE_DENTRY);

 return (struct ocfs2_dentry_lock *)lockres->l_priv;
}
