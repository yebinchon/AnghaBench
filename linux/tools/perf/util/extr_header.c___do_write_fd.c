
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feat_fd {int fd; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ writen (int ,void const*,size_t) ;

__attribute__((used)) static int __do_write_fd(struct feat_fd *ff, const void *buf, size_t size)
{
 ssize_t ret = writen(ff->fd, buf, size);

 if (ret != (ssize_t)size)
  return ret < 0 ? (int)ret : -1;
 return 0;
}
