
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct pollfd {int dummy; } ;
struct TYPE_3__ {int * _qproc; } ;
struct poll_wqueues {int error; TYPE_1__ pt; } ;
struct poll_list {int len; struct pollfd* entries; struct poll_list* next; } ;
typedef TYPE_1__ poll_table ;
typedef int ktime_t ;
typedef scalar_t__ __poll_t ;


 int ERESTARTNOHAND ;
 scalar_t__ POLL_BUSY_LOOP ;
 int TASK_INTERRUPTIBLE ;
 unsigned long busy_loop_current_time () ;
 int busy_loop_timeout (unsigned long) ;
 int current ;
 scalar_t__ do_pollfd (struct pollfd*,TYPE_1__*,int*,scalar_t__) ;
 int need_resched () ;
 scalar_t__ net_busy_loop_on () ;
 int poll_schedule_timeout (struct poll_wqueues*,int ,int *,int ) ;
 int select_estimate_accuracy (struct timespec64*) ;
 scalar_t__ signal_pending (int ) ;
 int timespec64_to_ktime (struct timespec64) ;

__attribute__((used)) static int do_poll(struct poll_list *list, struct poll_wqueues *wait,
     struct timespec64 *end_time)
{
 poll_table* pt = &wait->pt;
 ktime_t expire, *to = ((void*)0);
 int timed_out = 0, count = 0;
 u64 slack = 0;
 __poll_t busy_flag = net_busy_loop_on() ? POLL_BUSY_LOOP : 0;
 unsigned long busy_start = 0;


 if (end_time && !end_time->tv_sec && !end_time->tv_nsec) {
  pt->_qproc = ((void*)0);
  timed_out = 1;
 }

 if (end_time && !timed_out)
  slack = select_estimate_accuracy(end_time);

 for (;;) {
  struct poll_list *walk;
  bool can_busy_loop = 0;

  for (walk = list; walk != ((void*)0); walk = walk->next) {
   struct pollfd * pfd, * pfd_end;

   pfd = walk->entries;
   pfd_end = pfd + walk->len;
   for (; pfd != pfd_end; pfd++) {







    if (do_pollfd(pfd, pt, &can_busy_loop,
           busy_flag)) {
     count++;
     pt->_qproc = ((void*)0);

     busy_flag = 0;
     can_busy_loop = 0;
    }
   }
  }




  pt->_qproc = ((void*)0);
  if (!count) {
   count = wait->error;
   if (signal_pending(current))
    count = -ERESTARTNOHAND;
  }
  if (count || timed_out)
   break;


  if (can_busy_loop && !need_resched()) {
   if (!busy_start) {
    busy_start = busy_loop_current_time();
    continue;
   }
   if (!busy_loop_timeout(busy_start))
    continue;
  }
  busy_flag = 0;






  if (end_time && !to) {
   expire = timespec64_to_ktime(*end_time);
   to = &expire;
  }

  if (!poll_schedule_timeout(wait, TASK_INTERRUPTIBLE, to, slack))
   timed_out = 1;
 }
 return count;
}
