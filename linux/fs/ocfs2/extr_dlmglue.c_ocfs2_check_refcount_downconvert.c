
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_refcount_tree {int rf_ci; } ;
struct ocfs2_lock_res {int dummy; } ;


 int ocfs2_ci_checkpointed (int *,struct ocfs2_lock_res*,int) ;
 struct ocfs2_refcount_tree* ocfs2_lock_res_refcount_tree (struct ocfs2_lock_res*) ;

__attribute__((used)) static int ocfs2_check_refcount_downconvert(struct ocfs2_lock_res *lockres,
         int new_level)
{
 struct ocfs2_refcount_tree *tree =
    ocfs2_lock_res_refcount_tree(lockres);

 return ocfs2_ci_checkpointed(&tree->rf_ci, lockres, new_level);
}
