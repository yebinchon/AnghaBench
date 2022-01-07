
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_RDWR ;
 int atoi (char*) ;
 int close (int) ;
 int errno ;
 int error (int,int ,char*) ;
 int open (char*,int ) ;
 scalar_t__ read (int,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ write (int,char*,int) ;

void enable_fastopen(void)
{
 int fd = open("/proc/sys/net/ipv4/tcp_fastopen", 0);
 int rw_mask = 3;
 int val, size;
 char buf[16];

 if (fd < 0)
  error(1, errno, "Unable to open tcp_fastopen sysctl");
 if (read(fd, buf, sizeof(buf)) <= 0)
  error(1, errno, "Unable to read tcp_fastopen sysctl");
 val = atoi(buf);
 close(fd);

 if ((val & rw_mask) != rw_mask) {
  fd = open("/proc/sys/net/ipv4/tcp_fastopen", O_RDWR);
  if (fd < 0)
   error(1, errno,
         "Unable to open tcp_fastopen sysctl for writing");
  val |= rw_mask;
  size = snprintf(buf, 16, "%d", val);
  if (write(fd, buf, size) <= 0)
   error(1, errno, "Unable to write tcp_fastopen sysctl");
  close(fd);
 }
}
