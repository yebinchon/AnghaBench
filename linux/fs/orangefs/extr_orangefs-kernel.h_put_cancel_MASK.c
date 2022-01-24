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
struct orangefs_kernel_op_s {int /*<<< orphan*/  slot_to_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct orangefs_kernel_op_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct orangefs_kernel_op_s *op)
{
	FUNC1(op->slot_to_free);
	FUNC0(op);
}