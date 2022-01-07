
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {int dummy; } ;
struct io_uring_sq {int sqe_tail; unsigned int sqe_head; unsigned int* kring_entries; size_t* kring_mask; struct io_uring_sqe* sqes; } ;
struct io_uring {struct io_uring_sq sq; } ;



struct io_uring_sqe *io_uring_get_sqe(struct io_uring *ring)
{
 struct io_uring_sq *sq = &ring->sq;
 unsigned next = sq->sqe_tail + 1;
 struct io_uring_sqe *sqe;




 if (next - sq->sqe_head > *sq->kring_entries)
  return ((void*)0);

 sqe = &sq->sqes[sq->sqe_tail & *sq->kring_mask];
 sq->sqe_tail = next;
 return sqe;
}
