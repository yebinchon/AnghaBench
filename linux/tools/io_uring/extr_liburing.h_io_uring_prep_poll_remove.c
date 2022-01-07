
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {unsigned long addr; int opcode; } ;


 int IORING_OP_POLL_REMOVE ;
 int memset (struct io_uring_sqe*,int ,int) ;

__attribute__((used)) static inline void io_uring_prep_poll_remove(struct io_uring_sqe *sqe,
          void *user_data)
{
 memset(sqe, 0, sizeof(*sqe));
 sqe->opcode = IORING_OP_POLL_REMOVE;
 sqe->addr = (unsigned long) user_data;
}
