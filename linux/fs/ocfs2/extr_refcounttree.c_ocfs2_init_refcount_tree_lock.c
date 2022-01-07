
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int rf_lockres; int rf_sem; } ;


 int init_rwsem (int *) ;
 int ocfs2_refcount_lock_res_init (int *,struct ocfs2_super*,int ,int ) ;

__attribute__((used)) static inline void ocfs2_init_refcount_tree_lock(struct ocfs2_super *osb,
     struct ocfs2_refcount_tree *new,
     u64 rf_blkno, u32 generation)
{
 init_rwsem(&new->rf_sem);
 ocfs2_refcount_lock_res_init(&new->rf_lockres, osb,
         rf_blkno, generation);
}
