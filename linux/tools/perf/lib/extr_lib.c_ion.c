
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int BUG_ON (int) ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 scalar_t__ read (int,void*,size_t) ;
 scalar_t__ write (int,void*,size_t) ;

__attribute__((used)) static ssize_t ion(bool is_read, int fd, void *buf, size_t n)
{
 void *buf_start = buf;
 size_t left = n;

 while (left) {

  ssize_t ret = is_read ? read(fd, buf, left) :
     write(fd, buf, left);

  if (ret < 0 && errno == EINTR)
   continue;
  if (ret <= 0)
   return ret;

  left -= ret;
  buf += ret;
 }

 BUG_ON((size_t)(buf - buf_start) != n);
 return n;
}
