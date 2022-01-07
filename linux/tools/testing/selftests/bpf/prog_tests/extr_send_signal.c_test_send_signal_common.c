
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
struct bpf_object {int dummy; } ;
typedef int pid_t ;
typedef int __u64 ;
typedef scalar_t__ __u32 ;


 scalar_t__ CHECK (int,char const*,char*,...) ;
 int PERF_EVENT_IOC_ENABLE ;
 int PERF_EVENT_IOC_SET_BPF ;
 scalar_t__ SIGUSR1 ;
 int __NR_perf_event_open ;
 int bpf_map_update_elem (int,scalar_t__*,int*,int ) ;
 int bpf_object__close (struct bpf_object*) ;
 int bpf_object__find_map_fd_by_name (struct bpf_object*,char*) ;
 int bpf_prog_load (char const*,int,struct bpf_object**,int*) ;
 int close (int) ;
 int errno ;
 int exit (int ) ;
 int fork () ;
 int ioctl (int,int ,int) ;
 int pipe (int*) ;
 int read (int,char*,int) ;
 int signal (scalar_t__,int ) ;
 int sigusr1_handler ;
 scalar_t__ sigusr1_received ;
 int sleep (int) ;
 int strerror (int ) ;
 int syscall (int ,struct perf_event_attr*,int,int,int,int ) ;
 int wait (int *) ;
 int write (int,char*,int) ;

__attribute__((used)) static void test_send_signal_common(struct perf_event_attr *attr,
        int prog_type,
        const char *test_name)
{
 int err = -1, pmu_fd, prog_fd, info_map_fd, status_map_fd;
 const char *file = "./test_send_signal_kern.o";
 struct bpf_object *obj = ((void*)0);
 int pipe_c2p[2], pipe_p2c[2];
 __u32 key = 0, duration = 0;
 char buf[256];
 pid_t pid;
 __u64 val;

 if (CHECK(pipe(pipe_c2p), test_name,
    "pipe pipe_c2p error: %s\n", strerror(errno)))
  return;

 if (CHECK(pipe(pipe_p2c), test_name,
    "pipe pipe_p2c error: %s\n", strerror(errno))) {
  close(pipe_c2p[0]);
  close(pipe_c2p[1]);
  return;
 }

 pid = fork();
 if (CHECK(pid < 0, test_name, "fork error: %s\n", strerror(errno))) {
  close(pipe_c2p[0]);
  close(pipe_c2p[1]);
  close(pipe_p2c[0]);
  close(pipe_p2c[1]);
  return;
 }

 if (pid == 0) {

  signal(SIGUSR1, sigusr1_handler);

  close(pipe_c2p[0]);
  close(pipe_p2c[1]);


  write(pipe_c2p[1], buf, 1);


  read(pipe_p2c[0], buf, 1);


  sleep(1);

  if (sigusr1_received)
   write(pipe_c2p[1], "2", 1);
  else
   write(pipe_c2p[1], "0", 1);


  read(pipe_p2c[0], buf, 1);

  close(pipe_c2p[1]);
  close(pipe_p2c[0]);
  exit(0);
 }

 close(pipe_c2p[1]);
 close(pipe_p2c[0]);

 err = bpf_prog_load(file, prog_type, &obj, &prog_fd);
 if (CHECK(err < 0, test_name, "bpf_prog_load error: %s\n",
    strerror(errno)))
  goto prog_load_failure;

 pmu_fd = syscall(__NR_perf_event_open, attr, pid, -1,
    -1 , 0 );
 if (CHECK(pmu_fd < 0, test_name, "perf_event_open error: %s\n",
    strerror(errno))) {
  err = -1;
  goto close_prog;
 }

 err = ioctl(pmu_fd, PERF_EVENT_IOC_ENABLE, 0);
 if (CHECK(err < 0, test_name, "ioctl perf_event_ioc_enable error: %s\n",
    strerror(errno)))
  goto disable_pmu;

 err = ioctl(pmu_fd, PERF_EVENT_IOC_SET_BPF, prog_fd);
 if (CHECK(err < 0, test_name, "ioctl perf_event_ioc_set_bpf error: %s\n",
    strerror(errno)))
  goto disable_pmu;

 err = -1;
 info_map_fd = bpf_object__find_map_fd_by_name(obj, "info_map");
 if (CHECK(info_map_fd < 0, test_name, "find map %s error\n", "info_map"))
  goto disable_pmu;

 status_map_fd = bpf_object__find_map_fd_by_name(obj, "status_map");
 if (CHECK(status_map_fd < 0, test_name, "find map %s error\n", "status_map"))
  goto disable_pmu;


 read(pipe_c2p[0], buf, 1);


 key = 0;
 val = (((__u64)(SIGUSR1)) << 32) | pid;
 bpf_map_update_elem(info_map_fd, &key, &val, 0);


 write(pipe_p2c[1], buf, 1);


 err = read(pipe_c2p[0], buf, 1);
 if (CHECK(err < 0, test_name, "reading pipe error: %s\n", strerror(errno)))
  goto disable_pmu;
 if (CHECK(err == 0, test_name, "reading pipe error: size 0\n")) {
  err = -1;
  goto disable_pmu;
 }

 CHECK(buf[0] != '2', test_name, "incorrect result\n");


 write(pipe_p2c[1], buf, 1);

disable_pmu:
 close(pmu_fd);
close_prog:
 bpf_object__close(obj);
prog_load_failure:
 close(pipe_c2p[0]);
 close(pipe_p2c[1]);
 wait(((void*)0));
}
