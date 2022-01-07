
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {size_t iov_len; void* iov_base; } ;


 int ARRAY_SIZE (struct iovec*) ;
 int writev (int,struct iovec*,int ) ;

__attribute__((used)) static int tx_tap(int fd, void *pkt, size_t len)
{
 struct iovec iov[] = {
  {
   .iov_len = len,
   .iov_base = pkt,
  },
 };
 return writev(fd, iov, ARRAY_SIZE(iov));
}
