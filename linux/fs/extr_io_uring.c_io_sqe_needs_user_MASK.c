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
typedef  scalar_t__ u8 ;
struct io_uring_sqe {int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 scalar_t__ IORING_OP_READ_FIXED ; 
 scalar_t__ IORING_OP_WRITE_FIXED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC1(const struct io_uring_sqe *sqe)
{
	u8 opcode = FUNC0(sqe->opcode);

	return !(opcode == IORING_OP_READ_FIXED ||
		 opcode == IORING_OP_WRITE_FIXED);
}