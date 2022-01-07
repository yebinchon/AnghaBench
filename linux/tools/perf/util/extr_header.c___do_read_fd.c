
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feat_fd {int fd; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ readn (int ,void*,scalar_t__) ;

__attribute__((used)) static int __do_read_fd(struct feat_fd *ff, void *addr, ssize_t size)
{
 ssize_t ret = readn(ff->fd, addr, size);

 if (ret != size)
  return ret < 0 ? (int)ret : -1;
 return 0;
}
