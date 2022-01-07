
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EAGAIN ;
 int MSG_DONTWAIT ;
 int MSG_TRUNC ;
 int bytes ;
 scalar_t__ errno ;
 int error (int,scalar_t__,char*) ;
 int packets ;
 int recv (int,int *,int,int) ;

__attribute__((used)) static void do_flush_tcp(int fd)
{
 int ret;


 ret = recv(fd, ((void*)0), 1 << 21, MSG_TRUNC | MSG_DONTWAIT);
 if (ret == -1 && errno == EAGAIN)
  return;
 if (ret == -1)
  error(1, errno, "flush");
 if (!ret)
  return;

 packets++;
 bytes += ret;
}
