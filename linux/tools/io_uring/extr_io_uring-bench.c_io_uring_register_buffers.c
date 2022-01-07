
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submitter {int iovecs; int ring_fd; } ;


 int DEPTH ;
 int IORING_REGISTER_BUFFERS ;
 scalar_t__ do_nop ;
 int io_uring_register (int ,int ,int ,int ) ;

__attribute__((used)) static int io_uring_register_buffers(struct submitter *s)
{
 if (do_nop)
  return 0;

 return io_uring_register(s->ring_fd, IORING_REGISTER_BUFFERS, s->iovecs,
     DEPTH);
}
