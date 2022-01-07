
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {int dummy; } ;
typedef int off_t ;


 int IORING_OP_READ_FIXED ;
 int io_uring_prep_rw (int ,struct io_uring_sqe*,int,void*,unsigned int,int ) ;

__attribute__((used)) static inline void io_uring_prep_read_fixed(struct io_uring_sqe *sqe, int fd,
         void *buf, unsigned nbytes,
         off_t offset)
{
 io_uring_prep_rw(IORING_OP_READ_FIXED, sqe, fd, buf, nbytes, offset);
}
