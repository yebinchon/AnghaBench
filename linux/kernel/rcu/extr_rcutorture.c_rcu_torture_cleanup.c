
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rt_delay_jiffies; scalar_t__ rt_delay_ms; scalar_t__ rt_delay_us; scalar_t__ rt_preempted; int rt_readstate; } ;
struct TYPE_4__ {int (* cleanup ) () ;int (* cb_barrier ) () ;int name; int ttype; } ;


 scalar_t__ atomic_read (int *) ;
 int cpuhp_remove_state (int ) ;
 TYPE_1__* cur_ops ;
 TYPE_2__* err_segs ;
 scalar_t__ err_segs_recorded ;
 int * fakewriter_tasks ;
 int fqs_task ;
 int fwd_prog_task ;
 int kfree (int *) ;
 scalar_t__ n_rcu_torture_barrier_error ;
 int n_rcu_torture_error ;
 int nfakewriters ;
 int nrealreaders ;
 int pr_alert (char*,...) ;
 int pr_cont (char*,char*,...) ;
 int rcu_torture_barrier_cleanup () ;
 scalar_t__ rcu_torture_can_boost () ;
 int * rcu_torture_current ;
 int rcu_torture_fakewriter ;
 int rcu_torture_fqs ;
 int rcu_torture_fwd_prog ;
 int rcu_torture_print_module_parms (TYPE_1__*,char*) ;
 int rcu_torture_reader ;
 int rcu_torture_stall ;
 int rcu_torture_stats ;
 int rcu_torture_stats_print () ;
 int rcu_torture_writer ;
 int rcutor_hp ;
 int rcutorture_get_gp_data (int ,int*,unsigned long*) ;
 int * reader_tasks ;
 int rt_read_nsegs ;
 int show_rcu_gp_kthreads () ;
 int srcu_ctlp ;
 int srcutorture_get_gp_data (int ,int ,int*,unsigned long*) ;
 int stall_task ;
 int stats_task ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 scalar_t__ torture_cleanup_begin () ;
 int torture_cleanup_end () ;
 scalar_t__ torture_onoff_failures () ;
 int torture_stop_kthread (int ,int ) ;
 int writer_task ;

__attribute__((used)) static void
rcu_torture_cleanup(void)
{
 int firsttime;
 int flags = 0;
 unsigned long gp_seq = 0;
 int i;

 if (torture_cleanup_begin()) {
  if (cur_ops->cb_barrier != ((void*)0))
   cur_ops->cb_barrier();
  return;
 }
 if (!cur_ops) {
  torture_cleanup_end();
  return;
 }

 show_rcu_gp_kthreads();
 rcu_torture_barrier_cleanup();
 torture_stop_kthread(rcu_torture_fwd_prog, fwd_prog_task);
 torture_stop_kthread(rcu_torture_stall, stall_task);
 torture_stop_kthread(rcu_torture_writer, writer_task);

 if (reader_tasks) {
  for (i = 0; i < nrealreaders; i++)
   torture_stop_kthread(rcu_torture_reader,
          reader_tasks[i]);
  kfree(reader_tasks);
 }
 rcu_torture_current = ((void*)0);

 if (fakewriter_tasks) {
  for (i = 0; i < nfakewriters; i++) {
   torture_stop_kthread(rcu_torture_fakewriter,
          fakewriter_tasks[i]);
  }
  kfree(fakewriter_tasks);
  fakewriter_tasks = ((void*)0);
 }

 rcutorture_get_gp_data(cur_ops->ttype, &flags, &gp_seq);
 srcutorture_get_gp_data(cur_ops->ttype, srcu_ctlp, &flags, &gp_seq);
 pr_alert("%s:  End-test grace-period state: g%lu f%#x\n",
   cur_ops->name, gp_seq, flags);
 torture_stop_kthread(rcu_torture_stats, stats_task);
 torture_stop_kthread(rcu_torture_fqs, fqs_task);
 if (rcu_torture_can_boost())
  cpuhp_remove_state(rcutor_hp);





 if (cur_ops->cb_barrier != ((void*)0))
  cur_ops->cb_barrier();
 if (cur_ops->cleanup != ((void*)0))
  cur_ops->cleanup();

 rcu_torture_stats_print();

 if (err_segs_recorded) {
  pr_alert("Failure/close-call rcutorture reader segments:\n");
  if (rt_read_nsegs == 0)
   pr_alert("\t: No segments recorded!!!\n");
  firsttime = 1;
  for (i = 0; i < rt_read_nsegs; i++) {
   pr_alert("\t%d: %#x ", i, err_segs[i].rt_readstate);
   if (err_segs[i].rt_delay_jiffies != 0) {
    pr_cont("%s%ldjiffies", firsttime ? "" : "+",
     err_segs[i].rt_delay_jiffies);
    firsttime = 0;
   }
   if (err_segs[i].rt_delay_ms != 0) {
    pr_cont("%s%ldms", firsttime ? "" : "+",
     err_segs[i].rt_delay_ms);
    firsttime = 0;
   }
   if (err_segs[i].rt_delay_us != 0) {
    pr_cont("%s%ldus", firsttime ? "" : "+",
     err_segs[i].rt_delay_us);
    firsttime = 0;
   }
   pr_cont("%s\n",
    err_segs[i].rt_preempted ? "preempted" : "");

  }
 }
 if (atomic_read(&n_rcu_torture_error) || n_rcu_torture_barrier_error)
  rcu_torture_print_module_parms(cur_ops, "End of test: FAILURE");
 else if (torture_onoff_failures())
  rcu_torture_print_module_parms(cur_ops,
            "End of test: RCU_HOTPLUG");
 else
  rcu_torture_print_module_parms(cur_ops, "End of test: SUCCESS");
 torture_cleanup_end();
}
