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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  IORING_OP_READ_FIXED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct io_uring_sqe*,int,void*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct io_uring_sqe *sqe, int fd,
					    void *buf, unsigned nbytes,
					    off_t offset)
{
	FUNC0(IORING_OP_READ_FIXED, sqe, fd, buf, nbytes, offset);
}