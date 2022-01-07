
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int error (int,int ,char*,...) ;
 int write (int,char const*,int) ;

__attribute__((used)) static int do_tx(int fd, const char *pkt, int len)
{
 int ret;

 ret = write(fd, pkt, len);
 if (ret == -1)
  error(1, errno, "send");
 if (ret != len)
  error(1, errno, "send: len (%d < %d)\n", ret, len);

 return 1;
}
