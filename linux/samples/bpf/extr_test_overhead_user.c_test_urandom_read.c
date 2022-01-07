
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int __u64 ;


 int MAX_CNT ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int exit (int) ;
 int open (char*,int ) ;
 int printf (char*,...) ;
 scalar_t__ read (int,char*,int) ;
 char* strerror (int ) ;
 int time_get_ns () ;

__attribute__((used)) static void test_urandom_read(int cpu)
{
 __u64 start_time;
 char buf[4];
 int i, fd;

 fd = open("/dev/urandom", O_RDONLY);
 if (fd < 0) {
  printf("couldn't open /dev/urandom\n");
  exit(1);
 }
 start_time = time_get_ns();
 for (i = 0; i < MAX_CNT; i++) {
  if (read(fd, buf, sizeof(buf)) < 0) {
   printf("failed to read from /dev/urandom: %s\n", strerror(errno));
   close(fd);
   return;
  }
 }
 printf("urandom_read:%d: %lld events per sec\n",
        cpu, MAX_CNT * 1000000000ll / (time_get_ns() - start_time));
 close(fd);
}
