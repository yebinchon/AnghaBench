
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int sample_type; int sample_period; int wakeup_events; int config; int type; } ;
typedef int buf ;
typedef int __u32 ;


 int BPF_PROG_TYPE_TRACEPOINT ;
 scalar_t__ CHECK (int,char*,char*,int ) ;
 int O_RDONLY ;
 int PERF_SAMPLE_CALLCHAIN ;
 int PERF_SAMPLE_RAW ;
 int PERF_TYPE_TRACEPOINT ;
 int close (int) ;
 int errno ;
 int open (char const*,int ,int ) ;
 int read (int,char*,int) ;
 int strerror (int ) ;
 int strtol (char*,int *,int ) ;
 int test_send_signal_common (struct perf_event_attr*,int ,char*) ;

__attribute__((used)) static void test_send_signal_tracepoint(void)
{
 const char *id_path = "/sys/kernel/debug/tracing/events/syscalls/sys_enter_nanosleep/id";
 struct perf_event_attr attr = {
  .type = PERF_TYPE_TRACEPOINT,
  .sample_type = PERF_SAMPLE_RAW | PERF_SAMPLE_CALLCHAIN,
  .sample_period = 1,
  .wakeup_events = 1,
 };
 __u32 duration = 0;
 int bytes, efd;
 char buf[256];

 efd = open(id_path, O_RDONLY, 0);
 if (CHECK(efd < 0, "tracepoint",
    "open syscalls/sys_enter_nanosleep/id failure: %s\n",
    strerror(errno)))
  return;

 bytes = read(efd, buf, sizeof(buf));
 close(efd);
 if (CHECK(bytes <= 0 || bytes >= sizeof(buf), "tracepoint",
    "read syscalls/sys_enter_nanosleep/id failure: %s\n",
    strerror(errno)))
  return;

 attr.config = strtol(buf, ((void*)0), 0);

 test_send_signal_common(&attr, BPF_PROG_TYPE_TRACEPOINT, "tracepoint");
}
