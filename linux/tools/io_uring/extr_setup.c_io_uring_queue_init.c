
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_params {unsigned int flags; } ;
struct io_uring {int dummy; } ;
typedef int p ;


 int close (int) ;
 int io_uring_queue_mmap (int,struct io_uring_params*,struct io_uring*) ;
 int io_uring_setup (unsigned int,struct io_uring_params*) ;
 int memset (struct io_uring_params*,int ,int) ;

int io_uring_queue_init(unsigned entries, struct io_uring *ring, unsigned flags)
{
 struct io_uring_params p;
 int fd, ret;

 memset(&p, 0, sizeof(p));
 p.flags = flags;

 fd = io_uring_setup(entries, &p);
 if (fd < 0)
  return fd;

 ret = io_uring_queue_mmap(fd, &p, ring);
 if (ret)
  close(fd);

 return ret;
}
