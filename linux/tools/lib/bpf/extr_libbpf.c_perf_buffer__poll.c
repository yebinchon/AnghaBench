
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_cpu_buf {int dummy; } ;
struct perf_buffer {TYPE_2__* events; int cpu_cnt; int epoll_fd; } ;
struct TYPE_3__ {struct perf_cpu_buf* ptr; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 int epoll_wait (int ,TYPE_2__*,int ,int) ;
 int errno ;
 int perf_buffer__process_records (struct perf_buffer*,struct perf_cpu_buf*) ;
 int pr_warning (char*,int) ;

int perf_buffer__poll(struct perf_buffer *pb, int timeout_ms)
{
 int i, cnt, err;

 cnt = epoll_wait(pb->epoll_fd, pb->events, pb->cpu_cnt, timeout_ms);
 for (i = 0; i < cnt; i++) {
  struct perf_cpu_buf *cpu_buf = pb->events[i].data.ptr;

  err = perf_buffer__process_records(pb, cpu_buf);
  if (err) {
   pr_warning("error while processing records: %d\n", err);
   return err;
  }
 }
 return cnt < 0 ? -errno : cnt;
}
