
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int size; int config; int type; } ;
typedef int errmsg ;
typedef int attr ;


 int PERF_FLAG_FD_CLOEXEC ;
 int PERF_TYPE_TRACEPOINT ;
 int STRERR_BUFSIZE ;
 int __NR_perf_event_open ;
 int determine_tracepoint_id (char const*,char const*) ;
 int errno ;
 int libbpf_strerror_r (int,char*,int) ;
 int pr_warning (char*,char const*,char const*,int ) ;
 int syscall (int ,struct perf_event_attr*,int,int ,int,int ) ;

__attribute__((used)) static int perf_event_open_tracepoint(const char *tp_category,
          const char *tp_name)
{
 struct perf_event_attr attr = {};
 char errmsg[STRERR_BUFSIZE];
 int tp_id, pfd, err;

 tp_id = determine_tracepoint_id(tp_category, tp_name);
 if (tp_id < 0) {
  pr_warning("failed to determine tracepoint '%s/%s' perf event ID: %s\n",
      tp_category, tp_name,
      libbpf_strerror_r(tp_id, errmsg, sizeof(errmsg)));
  return tp_id;
 }

 attr.type = PERF_TYPE_TRACEPOINT;
 attr.size = sizeof(attr);
 attr.config = tp_id;

 pfd = syscall(__NR_perf_event_open, &attr, -1 , 0 ,
        -1 , PERF_FLAG_FD_CLOEXEC);
 if (pfd < 0) {
  err = -errno;
  pr_warning("tracepoint '%s/%s' perf_event_open() failed: %s\n",
      tp_category, tp_name,
      libbpf_strerror_r(err, errmsg, sizeof(errmsg)));
  return err;
 }
 return pfd;
}
