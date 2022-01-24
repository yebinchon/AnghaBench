#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct io_uring_sqe {int dummy; } ;
struct io_uring_sq {int* kring_entries; int ring_sz; int /*<<< orphan*/  khead; int /*<<< orphan*/  sqes; } ;
struct io_uring_cq {int ring_sz; int /*<<< orphan*/  khead; } ;
struct io_uring {int /*<<< orphan*/  ring_fd; struct io_uring_cq cq; struct io_uring_sq sq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(struct io_uring *ring)
{
	struct io_uring_sq *sq = &ring->sq;
	struct io_uring_cq *cq = &ring->cq;

	FUNC1(sq->sqes, *sq->kring_entries * sizeof(struct io_uring_sqe));
	FUNC1(sq->khead, sq->ring_sz);
	FUNC1(cq->khead, cq->ring_sz);
	FUNC0(ring->ring_fd);
}