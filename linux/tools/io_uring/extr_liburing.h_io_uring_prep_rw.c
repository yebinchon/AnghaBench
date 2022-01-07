
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {int opcode; int fd; unsigned long addr; unsigned int len; int off; } ;
typedef int off_t ;


 int memset (struct io_uring_sqe*,int ,int) ;

__attribute__((used)) static inline void io_uring_prep_rw(int op, struct io_uring_sqe *sqe, int fd,
        const void *addr, unsigned len,
        off_t offset)
{
 memset(sqe, 0, sizeof(*sqe));
 sqe->opcode = op;
 sqe->fd = fd;
 sqe->off = offset;
 sqe->addr = (unsigned long) addr;
 sqe->len = len;
}
