
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {int fd; short poll_events; int opcode; } ;


 int IORING_OP_POLL_ADD ;
 int memset (struct io_uring_sqe*,int ,int) ;

__attribute__((used)) static inline void io_uring_prep_poll_add(struct io_uring_sqe *sqe, int fd,
       short poll_mask)
{
 memset(sqe, 0, sizeof(*sqe));
 sqe->opcode = IORING_OP_POLL_ADD;
 sqe->fd = fd;
 sqe->poll_events = poll_mask;
}
