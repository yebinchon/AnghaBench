
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {scalar_t__ l_level; } ;
struct ocfs2_caching_info {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ DLM_LOCK_EX ;
 int DLM_LOCK_NL ;
 int DLM_LOCK_PR ;
 int OCFS2_SB (int ) ;
 int ocfs2_ci_fully_checkpointed (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_get_super (struct ocfs2_caching_info*) ;
 int ocfs2_start_checkpoint (int ) ;

__attribute__((used)) static int ocfs2_ci_checkpointed(struct ocfs2_caching_info *ci,
     struct ocfs2_lock_res *lockres,
     int new_level)
{
 int checkpointed = ocfs2_ci_fully_checkpointed(ci);

 BUG_ON(new_level != DLM_LOCK_NL && new_level != DLM_LOCK_PR);
 BUG_ON(lockres->l_level != DLM_LOCK_EX && !checkpointed);

 if (checkpointed)
  return 1;

 ocfs2_start_checkpoint(OCFS2_SB(ocfs2_metadata_cache_get_super(ci)));
 return 0;
}
