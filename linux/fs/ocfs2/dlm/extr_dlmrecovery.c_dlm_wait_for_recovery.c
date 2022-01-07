
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event; int dead_node; int new_master; int state; } ;
struct dlm_ctxt {TYPE_1__ reco; int dlm_reco_thread_task; int name; } ;


 scalar_t__ dlm_in_recovery (struct dlm_ctxt*) ;
 int mlog (int ,char*,int ,int ,int ,int ,int ) ;
 int task_pid_nr (int ) ;
 int wait_event (int ,int) ;

void dlm_wait_for_recovery(struct dlm_ctxt *dlm)
{
 if (dlm_in_recovery(dlm)) {
  mlog(0, "%s: reco thread %d in recovery: "
       "state=%d, master=%u, dead=%u\n",
       dlm->name, task_pid_nr(dlm->dlm_reco_thread_task),
       dlm->reco.state, dlm->reco.new_master,
       dlm->reco.dead_node);
 }
 wait_event(dlm->reco.event, !dlm_in_recovery(dlm));
}
