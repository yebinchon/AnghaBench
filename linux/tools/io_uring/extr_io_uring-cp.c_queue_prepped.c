
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {int dummy; } ;
struct io_uring {int dummy; } ;
struct io_data {int offset; int iov; scalar_t__ read; } ;


 int assert (struct io_uring_sqe*) ;
 int infd ;
 struct io_uring_sqe* io_uring_get_sqe (struct io_uring*) ;
 int io_uring_prep_readv (struct io_uring_sqe*,int ,int *,int,int ) ;
 int io_uring_prep_writev (struct io_uring_sqe*,int ,int *,int,int ) ;
 int io_uring_sqe_set_data (struct io_uring_sqe*,struct io_data*) ;
 int outfd ;

__attribute__((used)) static void queue_prepped(struct io_uring *ring, struct io_data *data)
{
 struct io_uring_sqe *sqe;

 sqe = io_uring_get_sqe(ring);
 assert(sqe);

 if (data->read)
  io_uring_prep_readv(sqe, infd, &data->iov, 1, data->offset);
 else
  io_uring_prep_writev(sqe, outfd, &data->iov, 1, data->offset);

 io_uring_sqe_set_data(sqe, data);
}
