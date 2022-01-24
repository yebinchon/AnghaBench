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
struct io_uring {int dummy; } ;
struct io_data {int /*<<< orphan*/  offset; int /*<<< orphan*/  iov; scalar_t__ read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct io_uring_sqe*) ; 
 int /*<<< orphan*/  infd ; 
 struct io_uring_sqe* FUNC1 (struct io_uring*) ; 
 int /*<<< orphan*/  FUNC2 (struct io_uring_sqe*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct io_uring_sqe*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct io_uring_sqe*,struct io_data*) ; 
 int /*<<< orphan*/  outfd ; 

__attribute__((used)) static void FUNC5(struct io_uring *ring, struct io_data *data)
{
	struct io_uring_sqe *sqe;

	sqe = FUNC1(ring);
	FUNC0(sqe);

	if (data->read)
		FUNC2(sqe, infd, &data->iov, 1, data->offset);
	else
		FUNC3(sqe, outfd, &data->iov, 1, data->offset);

	FUNC4(sqe, data);
}