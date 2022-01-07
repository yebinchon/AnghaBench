
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int * quota_rec; int slot_num; int journal; } ;


 int ORPHAN_NEED_TRUNCATE ;
 int ocfs2_queue_recovery_completion (int ,int ,int *,int *,int *,int ) ;

void ocfs2_complete_quota_recovery(struct ocfs2_super *osb)
{
 if (osb->quota_rec) {
  ocfs2_queue_recovery_completion(osb->journal,
      osb->slot_num,
      ((void*)0),
      ((void*)0),
      osb->quota_rec,
      ORPHAN_NEED_TRUNCATE);
  osb->quota_rec = ((void*)0);
 }
}
