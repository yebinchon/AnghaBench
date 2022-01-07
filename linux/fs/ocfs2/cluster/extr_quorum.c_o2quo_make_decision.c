
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct o2quo_state {int qs_heartbeating; int qs_connected; int qs_lock; int qs_hb_bm; int qs_conn_bm; } ;


 int ML_ERROR ;
 int ML_NOTICE ;
 int O2NM_MAX_NODES ;
 int find_first_bit (int ,int) ;
 int mlog (int ,char*,int,int,int,...) ;
 int o2nm_this_node () ;
 int o2quo_fence_self () ;
 struct o2quo_state o2quo_state ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void o2quo_make_decision(struct work_struct *work)
{
 int quorum;
 int lowest_hb, lowest_reachable = 0, fence = 0;
 struct o2quo_state *qs = &o2quo_state;

 spin_lock(&qs->qs_lock);

 lowest_hb = find_first_bit(qs->qs_hb_bm, O2NM_MAX_NODES);
 if (lowest_hb != O2NM_MAX_NODES)
  lowest_reachable = test_bit(lowest_hb, qs->qs_conn_bm);

 mlog(0, "heartbeating: %d, connected: %d, "
      "lowest: %d (%sreachable)\n", qs->qs_heartbeating,
      qs->qs_connected, lowest_hb, lowest_reachable ? "" : "un");

 if (!test_bit(o2nm_this_node(), qs->qs_hb_bm) ||
     qs->qs_heartbeating == 1)
  goto out;

 if (qs->qs_heartbeating & 1) {


  quorum = (qs->qs_heartbeating + 1)/2;
  if (qs->qs_connected < quorum) {
   mlog(ML_ERROR, "fencing this node because it is "
        "only connected to %u nodes and %u is needed "
        "to make a quorum out of %u heartbeating nodes\n",
        qs->qs_connected, quorum,
        qs->qs_heartbeating);
   fence = 1;
  }
 } else {




  quorum = qs->qs_heartbeating / 2;
  if (qs->qs_connected < quorum) {
   mlog(ML_ERROR, "fencing this node because it is "
        "only connected to %u nodes and %u is needed "
        "to make a quorum out of %u heartbeating nodes\n",
        qs->qs_connected, quorum,
        qs->qs_heartbeating);
   fence = 1;
  }
  else if ((qs->qs_connected == quorum) &&
    !lowest_reachable) {
   mlog(ML_ERROR, "fencing this node because it is "
        "connected to a half-quorum of %u out of %u "
        "nodes which doesn't include the lowest active "
        "node %u\n", quorum, qs->qs_heartbeating,
        lowest_hb);
   fence = 1;
  }
 }

out:
 if (fence) {
  spin_unlock(&qs->qs_lock);
  o2quo_fence_self();
 } else {
  mlog(ML_NOTICE, "not fencing this node, heartbeating: %d, "
   "connected: %d, lowest: %d (%sreachable)\n",
   qs->qs_heartbeating, qs->qs_connected, lowest_hb,
   lowest_reachable ? "" : "un");
  spin_unlock(&qs->qs_lock);

 }

}
