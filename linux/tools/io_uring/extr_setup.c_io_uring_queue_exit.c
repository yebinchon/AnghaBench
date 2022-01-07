
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {int dummy; } ;
struct io_uring_sq {int* kring_entries; int ring_sz; int khead; int sqes; } ;
struct io_uring_cq {int ring_sz; int khead; } ;
struct io_uring {int ring_fd; struct io_uring_cq cq; struct io_uring_sq sq; } ;


 int close (int ) ;
 int munmap (int ,int) ;

void io_uring_queue_exit(struct io_uring *ring)
{
 struct io_uring_sq *sq = &ring->sq;
 struct io_uring_cq *cq = &ring->cq;

 munmap(sq->sqes, *sq->kring_entries * sizeof(struct io_uring_sqe));
 munmap(sq->khead, sq->ring_sz);
 munmap(cq->khead, cq->ring_sz);
 close(ring->ring_fd);
}
