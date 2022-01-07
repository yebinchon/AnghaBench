
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct o2quo_state {scalar_t__ qs_holds; int qs_hold_bm; int qs_lock; } ;


 scalar_t__ O2NM_MAX_NODES ;
 int assert_spin_locked (int *) ;
 int mlog (int ,char*,int ,scalar_t__) ;
 int mlog_bug_on_msg (int,char*,int ) ;
 int test_and_set_bit (int ,int ) ;

__attribute__((used)) static void o2quo_set_hold(struct o2quo_state *qs, u8 node)
{
 assert_spin_locked(&qs->qs_lock);

 if (!test_and_set_bit(node, qs->qs_hold_bm)) {
  qs->qs_holds++;
  mlog_bug_on_msg(qs->qs_holds == O2NM_MAX_NODES,
           "node %u\n", node);
  mlog(0, "node %u, %d total\n", node, qs->qs_holds);
 }
}
