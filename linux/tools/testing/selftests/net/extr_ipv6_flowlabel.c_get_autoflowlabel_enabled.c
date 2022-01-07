
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 scalar_t__ close (int) ;
 int errno ;
 int error (int,int ,char*) ;
 int open (char*,int ) ;
 int read (int,char*,int) ;

__attribute__((used)) static bool get_autoflowlabel_enabled(void)
{
 int fd, ret;
 char val;

 fd = open("/proc/sys/net/ipv6/auto_flowlabels", O_RDONLY);
 if (fd == -1)
  error(1, errno, "open sysctl");

 ret = read(fd, &val, 1);
 if (ret == -1)
  error(1, errno, "read sysctl");
 if (ret == 0)
  error(1, 0, "read sysctl: 0");

 if (close(fd))
  error(1, errno, "close sysctl");

 return val == '1';
}
