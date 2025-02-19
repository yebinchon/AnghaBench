
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_lock; int * osb_orphan_wipes; int osb_recovering_orphan_dirs; } ;


 int EDEADLK ;
 scalar_t__ ocfs2_node_map_test_bit (struct ocfs2_super*,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_check_orphan_recovery_state (int,int) ;

__attribute__((used)) static int ocfs2_check_orphan_recovery_state(struct ocfs2_super *osb,
          int slot)
{
 int ret = 0;

 spin_lock(&osb->osb_lock);
 if (ocfs2_node_map_test_bit(osb, &osb->osb_recovering_orphan_dirs, slot)) {
  ret = -EDEADLK;
  goto out;
 }


 osb->osb_orphan_wipes[slot]++;
out:
 spin_unlock(&osb->osb_lock);
 trace_ocfs2_check_orphan_recovery_state(slot, ret);
 return ret;
}
