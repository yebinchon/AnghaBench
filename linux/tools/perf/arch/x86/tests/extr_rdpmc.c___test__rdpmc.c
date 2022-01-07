
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sigaction {scalar_t__ sa_flags; int sa_sigaction; int sa_mask; } ;
struct perf_event_attr {int exclude_kernel; int config; int type; } ;
typedef int sbuf ;


 int MAP_SHARED ;
 int PERF_COUNT_HW_INSTRUCTIONS ;
 int PERF_TYPE_HARDWARE ;
 int PROT_READ ;
 int SIGSEGV ;
 int STRERR_BUFSIZE ;
 int close (int) ;
 int errno ;
 void* mmap (int *,int ,int ,int ,int,int ) ;
 int mmap_read_self (void*) ;
 int munmap (void*,int ) ;
 int page_size ;
 int perf_event_open_cloexec_flag () ;
 int pr_debug (char*,...) ;
 int pr_err (char*,int,...) ;
 int segfault_handler ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigfillset (int *) ;
 int str_error_r (int ,char*,int) ;
 int sys_perf_event_open (struct perf_event_attr*,int ,int,int,int ) ;

__attribute__((used)) static int __test__rdpmc(void)
{
 volatile int tmp = 0;
 u64 i, loops = 1000;
 int n;
 int fd;
 void *addr;
 struct perf_event_attr attr = {
  .type = PERF_TYPE_HARDWARE,
  .config = PERF_COUNT_HW_INSTRUCTIONS,
  .exclude_kernel = 1,
 };
 u64 delta_sum = 0;
        struct sigaction sa;
 char sbuf[STRERR_BUFSIZE];

 sigfillset(&sa.sa_mask);
 sa.sa_sigaction = segfault_handler;
 sa.sa_flags = 0;
 sigaction(SIGSEGV, &sa, ((void*)0));

 fd = sys_perf_event_open(&attr, 0, -1, -1,
     perf_event_open_cloexec_flag());
 if (fd < 0) {
  pr_err("Error: sys_perf_event_open() syscall returned "
         "with %d (%s)\n", fd,
         str_error_r(errno, sbuf, sizeof(sbuf)));
  return -1;
 }

 addr = mmap(((void*)0), page_size, PROT_READ, MAP_SHARED, fd, 0);
 if (addr == (void *)(-1)) {
  pr_err("Error: mmap() syscall returned with (%s)\n",
         str_error_r(errno, sbuf, sizeof(sbuf)));
  goto out_close;
 }

 for (n = 0; n < 6; n++) {
  u64 stamp, now, delta;

  stamp = mmap_read_self(addr);

  for (i = 0; i < loops; i++)
   tmp++;

  now = mmap_read_self(addr);
  loops *= 10;

  delta = now - stamp;
  pr_debug("%14d: %14Lu\n", n, (long long)delta);

  delta_sum += delta;
 }

 munmap(addr, page_size);
 pr_debug("   ");
out_close:
 close(fd);

 if (!delta_sum)
  return -1;

 return 0;
}
