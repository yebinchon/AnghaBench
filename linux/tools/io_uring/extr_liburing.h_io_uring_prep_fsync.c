
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {int fd; unsigned int fsync_flags; int opcode; } ;


 int IORING_OP_FSYNC ;
 int memset (struct io_uring_sqe*,int ,int) ;

__attribute__((used)) static inline void io_uring_prep_fsync(struct io_uring_sqe *sqe, int fd,
           unsigned fsync_flags)
{
 memset(sqe, 0, sizeof(*sqe));
 sqe->opcode = IORING_OP_FSYNC;
 sqe->fd = fd;
 sqe->fsync_flags = fsync_flags;
}
