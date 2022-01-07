
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int l_name; } ;


 int OCFS2_LOCK_TYPE_REFCOUNT ;
 int ocfs2_build_lock_name (int ,int ,unsigned int,int ) ;
 int ocfs2_lock_res_init_common (struct ocfs2_super*,struct ocfs2_lock_res*,int ,int *,struct ocfs2_super*) ;
 int ocfs2_lock_res_init_once (struct ocfs2_lock_res*) ;
 int ocfs2_refcount_block_lops ;

void ocfs2_refcount_lock_res_init(struct ocfs2_lock_res *lockres,
      struct ocfs2_super *osb, u64 ref_blkno,
      unsigned int generation)
{
 ocfs2_lock_res_init_once(lockres);
 ocfs2_build_lock_name(OCFS2_LOCK_TYPE_REFCOUNT, ref_blkno,
         generation, lockres->l_name);
 ocfs2_lock_res_init_common(osb, lockres, OCFS2_LOCK_TYPE_REFCOUNT,
       &ocfs2_refcount_block_lops, osb);
}
