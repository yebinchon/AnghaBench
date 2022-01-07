
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_cqe {int dummy; } ;
struct io_uring {int dummy; } ;


 int __io_uring_get_cqe (struct io_uring*,struct io_uring_cqe**,int) ;

int io_uring_wait_cqe(struct io_uring *ring, struct io_uring_cqe **cqe_ptr)
{
 return __io_uring_get_cqe(ring, cqe_ptr, 1);
}
