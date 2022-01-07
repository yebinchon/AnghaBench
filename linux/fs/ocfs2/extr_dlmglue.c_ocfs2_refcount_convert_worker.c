
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_refcount_tree {int rf_ci; } ;
struct ocfs2_lock_res {int dummy; } ;


 int UNBLOCK_CONTINUE ;
 struct ocfs2_refcount_tree* ocfs2_lock_res_refcount_tree (struct ocfs2_lock_res*) ;
 int ocfs2_metadata_cache_purge (int *) ;

__attribute__((used)) static int ocfs2_refcount_convert_worker(struct ocfs2_lock_res *lockres,
      int blocking)
{
 struct ocfs2_refcount_tree *tree =
    ocfs2_lock_res_refcount_tree(lockres);

 ocfs2_metadata_cache_purge(&tree->rf_ci);

 return UNBLOCK_CONTINUE;
}
