
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int * local_alloc_copy; int slot_num; struct ocfs2_journal* journal; } ;
struct ocfs2_journal {int dummy; } ;


 int ORPHAN_NEED_TRUNCATE ;
 int REPLAY_NEEDED ;
 int ocfs2_free_replay_slots (struct ocfs2_super*) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 int ocfs2_queue_recovery_completion (struct ocfs2_journal*,int ,int *,int *,int *,int ) ;
 int ocfs2_queue_replay_slots (struct ocfs2_super*,int ) ;
 int ocfs2_replay_map_set_state (struct ocfs2_super*,int ) ;
 int ocfs2_schedule_truncate_log_flush (struct ocfs2_super*,int ) ;

void ocfs2_complete_mount_recovery(struct ocfs2_super *osb)
{
 struct ocfs2_journal *journal = osb->journal;

 if (ocfs2_is_hard_readonly(osb))
  return;



 ocfs2_queue_recovery_completion(journal, osb->slot_num,
     osb->local_alloc_copy, ((void*)0), ((void*)0),
     ORPHAN_NEED_TRUNCATE);
 ocfs2_schedule_truncate_log_flush(osb, 0);

 osb->local_alloc_copy = ((void*)0);


 ocfs2_replay_map_set_state(osb, REPLAY_NEEDED);
 ocfs2_queue_replay_slots(osb, ORPHAN_NEED_TRUNCATE);
 ocfs2_free_replay_slots(osb);
}
