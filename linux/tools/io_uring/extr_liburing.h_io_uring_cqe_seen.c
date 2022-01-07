
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_cqe {int dummy; } ;
struct io_uring_cq {int * khead; } ;
struct io_uring {struct io_uring_cq cq; } ;


 int write_barrier () ;

__attribute__((used)) static inline void io_uring_cqe_seen(struct io_uring *ring,
         struct io_uring_cqe *cqe)
{
 if (cqe) {
  struct io_uring_cq *cq = &ring->cq;

  (*cq->khead)++;




  write_barrier();
 }
}
