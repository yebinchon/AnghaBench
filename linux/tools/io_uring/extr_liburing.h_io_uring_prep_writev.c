
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;
struct io_uring_sqe {int dummy; } ;
typedef int off_t ;


 int IORING_OP_WRITEV ;
 int io_uring_prep_rw (int ,struct io_uring_sqe*,int,struct iovec const*,unsigned int,int ) ;

__attribute__((used)) static inline void io_uring_prep_writev(struct io_uring_sqe *sqe, int fd,
     const struct iovec *iovecs,
     unsigned nr_vecs, off_t offset)
{
 io_uring_prep_rw(IORING_OP_WRITEV, sqe, fd, iovecs, nr_vecs, offset);
}
