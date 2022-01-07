
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int __u64 ;


 int MAX_CNT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int exit (int) ;
 int open (char*,int) ;
 int printf (char*,...) ;
 char* strerror (int ) ;
 int time_get_ns () ;
 scalar_t__ write (int,char*,int) ;

__attribute__((used)) static void test_task_rename(int cpu)
{
 __u64 start_time;
 char buf[] = "test\n";
 int i, fd;

 fd = open("/proc/self/comm", O_WRONLY|O_TRUNC);
 if (fd < 0) {
  printf("couldn't open /proc\n");
  exit(1);
 }
 start_time = time_get_ns();
 for (i = 0; i < MAX_CNT; i++) {
  if (write(fd, buf, sizeof(buf)) < 0) {
   printf("task rename failed: %s\n", strerror(errno));
   close(fd);
   return;
  }
 }
 printf("task_rename:%d: %lld events per sec\n",
        cpu, MAX_CNT * 1000000000ll / (time_get_ns() - start_time));
 close(fd);
}
