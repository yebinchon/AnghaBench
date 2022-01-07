
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int __u64 ;
typedef int __u32 ;


 int O_RDONLY ;
 int bpf_task_fd_query (int ,int,int ,char*,int*,int*,int*,int *,int *) ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*) ;
 int getpid () ;
 int open (char*,int ) ;
 int p_err (char*,int ) ;
 int perf_query_supported ;
 int stderr ;
 int strerror (int) ;

__attribute__((used)) static bool has_perf_query_support(void)
{
 __u64 probe_offset, probe_addr;
 __u32 len, prog_id, fd_type;
 char buf[256];
 int fd;

 if (perf_query_supported)
  goto out;

 fd = open("/", O_RDONLY);
 if (fd < 0) {
  p_err("perf_query_support: cannot open directory \"/\" (%s)",
        strerror(errno));
  goto out;
 }




 errno = 0;
 len = sizeof(buf);
 bpf_task_fd_query(getpid(), fd, 0, buf, &len, &prog_id,
     &fd_type, &probe_offset, &probe_addr);

 if (errno == 524 ) {
  perf_query_supported = 1;
  goto close_fd;
 }

 perf_query_supported = 2;
 p_err("perf_query_support: %s", strerror(errno));
 fprintf(stderr,
  "HINT: non root or kernel doesn't support TASK_FD_QUERY\n");

close_fd:
 close(fd);
out:
 return perf_query_supported == 1;
}
