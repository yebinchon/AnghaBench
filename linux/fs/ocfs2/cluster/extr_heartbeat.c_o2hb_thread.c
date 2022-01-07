
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int hr_node_deleted; int hr_last_hb_status; unsigned int hr_timeout_ms; int hr_blocks; int hr_aborted_start; int hr_unclean_stop; int * hr_slots; } ;
struct o2hb_bio_wait_ctxt {int dummy; } ;
typedef int ktime_t ;


 int MIN_NICE ;
 int ML_ERROR ;
 int ML_HEARTBEAT ;
 int ML_KTHREAD ;
 int current ;
 int kthread_should_stop () ;
 int ktime_get_real () ;
 scalar_t__ ktime_ms_delta (int ,int ) ;
 int mlog (int,char*,...) ;
 int mlog_errno (int) ;
 int msleep_interruptible (unsigned int) ;
 int o2hb_disarm_timeout (struct o2hb_region*) ;
 int o2hb_do_disk_heartbeat (struct o2hb_region*) ;
 int o2hb_issue_node_write (struct o2hb_region*,struct o2hb_bio_wait_ctxt*) ;
 int o2hb_prepare_block (struct o2hb_region*,int ) ;
 int o2hb_shutdown_slot (int *) ;
 int o2hb_steady_queue ;
 int o2hb_wait_on_io (struct o2hb_bio_wait_ctxt*) ;
 int o2nm_depend_this_node () ;
 int o2nm_undepend_this_node () ;
 int set_user_nice (int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int o2hb_thread(void *data)
{
 int i, ret;
 struct o2hb_region *reg = data;
 struct o2hb_bio_wait_ctxt write_wc;
 ktime_t before_hb, after_hb;
 unsigned int elapsed_msec;

 mlog(ML_HEARTBEAT|ML_KTHREAD, "hb thread running\n");

 set_user_nice(current, MIN_NICE);


 ret = o2nm_depend_this_node();
 if (ret) {
  mlog(ML_ERROR, "Node has been deleted, ret = %d\n", ret);
  reg->hr_node_deleted = 1;
  wake_up(&o2hb_steady_queue);
  return 0;
 }

 while (!kthread_should_stop() &&
        !reg->hr_unclean_stop && !reg->hr_aborted_start) {





  before_hb = ktime_get_real();

  ret = o2hb_do_disk_heartbeat(reg);
  reg->hr_last_hb_status = ret;

  after_hb = ktime_get_real();

  elapsed_msec = (unsigned int)
    ktime_ms_delta(after_hb, before_hb);

  mlog(ML_HEARTBEAT,
       "start = %lld, end = %lld, msec = %u, ret = %d\n",
       before_hb, after_hb, elapsed_msec, ret);

  if (!kthread_should_stop() &&
      elapsed_msec < reg->hr_timeout_ms) {


   msleep_interruptible(reg->hr_timeout_ms - elapsed_msec);
  }
 }

 o2hb_disarm_timeout(reg);


 for(i = 0; !reg->hr_unclean_stop && i < reg->hr_blocks; i++)
  o2hb_shutdown_slot(&reg->hr_slots[i]);






 if (!reg->hr_unclean_stop && !reg->hr_aborted_start) {
  o2hb_prepare_block(reg, 0);
  ret = o2hb_issue_node_write(reg, &write_wc);
  if (ret == 0)
   o2hb_wait_on_io(&write_wc);
  else
   mlog_errno(ret);
 }


 o2nm_undepend_this_node();

 mlog(ML_HEARTBEAT|ML_KTHREAD, "o2hb thread exiting\n");

 return 0;
}
