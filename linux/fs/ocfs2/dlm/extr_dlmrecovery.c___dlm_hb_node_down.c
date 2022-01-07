
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int new_master; int state; } ;
struct dlm_ctxt {int joining_node; int recovery_map; int migration_wq; int exit_domain_map; int domain_map; int live_nodes_map; int name; TYPE_1__ reco; int spinlock; } ;


 int DLM_LOCK_RES_OWNER_UNKNOWN ;
 int DLM_RECO_STATE_FINALIZE ;
 int __dlm_reset_recovery (struct dlm_ctxt*) ;
 int __dlm_set_joining_node (struct dlm_ctxt*,int ) ;
 int assert_spin_locked (int *) ;
 int clear_bit (int,int ) ;
 int dlm_do_local_recovery_cleanup (struct dlm_ctxt*,int) ;
 int dlm_hb_event_notify_attached (struct dlm_ctxt*,int,int ) ;
 int mlog (int ,char*,int,...) ;
 int set_bit (int,int ) ;
 int test_bit (int,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void __dlm_hb_node_down(struct dlm_ctxt *dlm, int idx)
{
 assert_spin_locked(&dlm->spinlock);

 if (dlm->reco.new_master == idx) {
  mlog(0, "%s: recovery master %d just died\n",
       dlm->name, idx);
  if (dlm->reco.state & DLM_RECO_STATE_FINALIZE) {



   mlog(0, "%s: dead master %d had reached "
        "finalize1 state, clearing\n", dlm->name, idx);
   dlm->reco.state &= ~DLM_RECO_STATE_FINALIZE;
   __dlm_reset_recovery(dlm);
  }
 }


 if (dlm->joining_node == idx) {
  mlog(0, "Clearing join state for node %u\n", idx);
  __dlm_set_joining_node(dlm, DLM_LOCK_RES_OWNER_UNKNOWN);
 }


 if (!test_bit(idx, dlm->live_nodes_map)) {
  mlog(0, "for domain %s, node %d is already dead. "
       "another node likely did recovery already.\n",
       dlm->name, idx);
  return;
 }


 if (!test_bit(idx, dlm->domain_map)) {


  mlog(0, "node %u already removed from domain!\n", idx);
  return;
 }

 clear_bit(idx, dlm->live_nodes_map);


 if (!test_bit(idx, dlm->recovery_map))
  dlm_do_local_recovery_cleanup(dlm, idx);


 dlm_hb_event_notify_attached(dlm, idx, 0);

 mlog(0, "node %u being removed from domain map!\n", idx);
 clear_bit(idx, dlm->domain_map);
 clear_bit(idx, dlm->exit_domain_map);


 wake_up(&dlm->migration_wq);

 set_bit(idx, dlm->recovery_map);
}
