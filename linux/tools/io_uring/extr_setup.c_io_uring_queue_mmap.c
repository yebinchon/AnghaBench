
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_params {int dummy; } ;
struct io_uring {int ring_fd; int cq; int sq; } ;


 int io_uring_mmap (int,struct io_uring_params*,int *,int *) ;
 int memset (struct io_uring*,int ,int) ;

int io_uring_queue_mmap(int fd, struct io_uring_params *p, struct io_uring *ring)
{
 int ret;

 memset(ring, 0, sizeof(*ring));
 ret = io_uring_mmap(fd, p, &ring->sq, &ring->cq);
 if (!ret)
  ring->ring_fd = fd;
 return ret;
}
