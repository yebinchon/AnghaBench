
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_cqe {int dummy; } ;
struct io_uring_cq {unsigned int* kring_mask; unsigned int* khead; unsigned int* ktail; struct io_uring_cqe* cqes; } ;
struct io_uring {int ring_fd; struct io_uring_cq cq; } ;


 int IORING_ENTER_GETEVENTS ;
 int errno ;
 int io_uring_enter (int ,int ,int,int ,int *) ;
 int read_barrier () ;

__attribute__((used)) static int __io_uring_get_cqe(struct io_uring *ring,
         struct io_uring_cqe **cqe_ptr, int wait)
{
 struct io_uring_cq *cq = &ring->cq;
 const unsigned mask = *cq->kring_mask;
 unsigned head;
 int ret;

 *cqe_ptr = ((void*)0);
 head = *cq->khead;
 do {







  read_barrier();
  if (head != *cq->ktail) {
   *cqe_ptr = &cq->cqes[head & mask];
   break;
  }
  if (!wait)
   break;
  ret = io_uring_enter(ring->ring_fd, 0, 1,
     IORING_ENTER_GETEVENTS, ((void*)0));
  if (ret < 0)
   return -errno;
 } while (1);

 return 0;
}
