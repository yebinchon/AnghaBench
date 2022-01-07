
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int node_num; int journal; } ;
struct ocfs2_dinode {int dummy; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int ORPHAN_NEED_TRUNCATE ;
 int mlog_errno (int) ;
 int ocfs2_begin_local_alloc_recovery (struct ocfs2_super*,int,struct ocfs2_dinode**) ;
 int ocfs2_begin_truncate_log_recovery (struct ocfs2_super*,int,struct ocfs2_dinode**) ;
 int ocfs2_clear_slot (struct ocfs2_super*,int) ;
 int ocfs2_queue_recovery_completion (int ,int,struct ocfs2_dinode*,struct ocfs2_dinode*,int *,int ) ;
 int ocfs2_replay_journal (struct ocfs2_super*,int,int) ;
 int trace_ocfs2_recover_node (int,int,int) ;
 int trace_ocfs2_recover_node_skip (int,int) ;

__attribute__((used)) static int ocfs2_recover_node(struct ocfs2_super *osb,
         int node_num, int slot_num)
{
 int status = 0;
 struct ocfs2_dinode *la_copy = ((void*)0);
 struct ocfs2_dinode *tl_copy = ((void*)0);

 trace_ocfs2_recover_node(node_num, slot_num, osb->node_num);



 BUG_ON(osb->node_num == node_num);

 status = ocfs2_replay_journal(osb, node_num, slot_num);
 if (status < 0) {
  if (status == -EBUSY) {
   trace_ocfs2_recover_node_skip(slot_num, node_num);
   status = 0;
   goto done;
  }
  mlog_errno(status);
  goto done;
 }


 status = ocfs2_begin_local_alloc_recovery(osb, slot_num, &la_copy);
 if (status < 0) {
  mlog_errno(status);
  goto done;
 }




 status = ocfs2_begin_truncate_log_recovery(osb, slot_num, &tl_copy);
 if (status < 0)
  mlog_errno(status);



 status = ocfs2_clear_slot(osb, slot_num);
 if (status < 0)
  mlog_errno(status);


 ocfs2_queue_recovery_completion(osb->journal, slot_num, la_copy,
     tl_copy, ((void*)0), ORPHAN_NEED_TRUNCATE);

 status = 0;
done:

 return status;
}
