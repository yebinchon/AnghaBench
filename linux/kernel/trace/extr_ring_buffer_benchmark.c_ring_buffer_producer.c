
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int dummy; } ;
typedef int ktime_t ;


 scalar_t__ MAX_NICE ;
 unsigned long NSEC_PER_MSEC ;
 int NSEC_PER_SEC ;
 int RUN_TIME ;
 int USEC_PER_MSEC ;
 int break_test () ;
 int buffer ;
 int cond_resched () ;
 scalar_t__ consumer ;
 scalar_t__ consumer_fifo ;
 scalar_t__ consumer_nice ;
 scalar_t__ disable_reader ;
 int do_div (unsigned long long,int ) ;
 int init_completion (int *) ;
 int ktime_add_ns (int ,int) ;
 scalar_t__ ktime_before (int ,int ) ;
 int ktime_get () ;
 unsigned long long ktime_us_delta (int ,int ) ;
 scalar_t__ producer_fifo ;
 scalar_t__ producer_nice ;
 unsigned long long read ;
 int read_done ;
 scalar_t__ read_events ;
 int read_start ;
 int reader_finish ;
 unsigned long long ring_buffer_entries (int ) ;
 int* ring_buffer_event_data (struct ring_buffer_event*) ;
 struct ring_buffer_event* ring_buffer_lock_reserve (int ,int) ;
 unsigned long long ring_buffer_overruns (int ) ;
 int ring_buffer_unlock_commit (int ,struct ring_buffer_event*) ;
 int smp_processor_id () ;
 int smp_wmb () ;
 scalar_t__ test_error ;
 int trace_printk (char*,...) ;
 int wait_for_completion (int *) ;
 int wake_up_process (scalar_t__) ;
 int wakeup_interval ;
 int write_iteration ;

__attribute__((used)) static void ring_buffer_producer(void)
{
 ktime_t start_time, end_time, timeout;
 unsigned long long time;
 unsigned long long entries;
 unsigned long long overruns;
 unsigned long missed = 0;
 unsigned long hit = 0;
 unsigned long avg;
 int cnt = 0;





 trace_printk("Starting ring buffer hammer\n");
 start_time = ktime_get();
 timeout = ktime_add_ns(start_time, RUN_TIME * NSEC_PER_SEC);
 do {
  struct ring_buffer_event *event;
  int *entry;
  int i;

  for (i = 0; i < write_iteration; i++) {
   event = ring_buffer_lock_reserve(buffer, 10);
   if (!event) {
    missed++;
   } else {
    hit++;
    entry = ring_buffer_event_data(event);
    *entry = smp_processor_id();
    ring_buffer_unlock_commit(buffer, event);
   }
  }
  end_time = ktime_get();

  cnt++;
  if (consumer && !(cnt % wakeup_interval))
   wake_up_process(consumer);
  if (cnt % wakeup_interval)
   cond_resched();

 } while (ktime_before(end_time, timeout) && !break_test());
 trace_printk("End ring buffer hammer\n");

 if (consumer) {

  init_completion(&read_start);
  init_completion(&read_done);

  smp_wmb();
  reader_finish = 1;
  wake_up_process(consumer);
  wait_for_completion(&read_done);
 }

 time = ktime_us_delta(end_time, start_time);

 entries = ring_buffer_entries(buffer);
 overruns = ring_buffer_overruns(buffer);

 if (test_error)
  trace_printk("ERROR!\n");

 if (!disable_reader) {
  if (consumer_fifo < 0)
   trace_printk("Running Consumer at nice: %d\n",
         consumer_nice);
  else
   trace_printk("Running Consumer at SCHED_FIFO %d\n",
         consumer_fifo);
 }
 if (producer_fifo < 0)
  trace_printk("Running Producer at nice: %d\n",
        producer_nice);
 else
  trace_printk("Running Producer at SCHED_FIFO %d\n",
        producer_fifo);


 if (producer_fifo < 0 && consumer_fifo < 0 &&
     producer_nice == MAX_NICE && consumer_nice == MAX_NICE)
  trace_printk("WARNING!!! This test is running at lowest priority.\n");

 trace_printk("Time:     %lld (usecs)\n", time);
 trace_printk("Overruns: %lld\n", overruns);
 if (disable_reader)
  trace_printk("Read:     (reader disabled)\n");
 else
  trace_printk("Read:     %ld  (by %s)\n", read,
   read_events ? "events" : "pages");
 trace_printk("Entries:  %lld\n", entries);
 trace_printk("Total:    %lld\n", entries + overruns + read);
 trace_printk("Missed:   %ld\n", missed);
 trace_printk("Hit:      %ld\n", hit);


 do_div(time, USEC_PER_MSEC);
 if (time)
  hit /= (long)time;
 else
  trace_printk("TIME IS ZERO??\n");

 trace_printk("Entries per millisec: %ld\n", hit);

 if (hit) {

  avg = NSEC_PER_MSEC / hit;
  trace_printk("%ld ns per entry\n", avg);
 }

 if (missed) {
  if (time)
   missed /= (long)time;

  trace_printk("Total iterations per millisec: %ld\n",
        hit + missed);


  if (!(hit + missed)) {
   trace_printk("hit + missed overflowed and totalled zero!\n");
   hit--;
  }


  avg = NSEC_PER_MSEC / (hit + missed);
  trace_printk("%ld ns per entry\n", avg);
 }
}
