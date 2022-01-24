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
struct orangefs_kernel_op_s {int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOSSIP_CACHE_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct orangefs_kernel_op_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct orangefs_kernel_op_s*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  op_cache ; 

void FUNC4(struct orangefs_kernel_op_s *orangefs_op)
{
	if (orangefs_op) {
		FUNC0(GOSSIP_CACHE_DEBUG,
			     "Releasing OP (%p: %llu)\n",
			     orangefs_op,
			     FUNC3(orangefs_op->tag));
		FUNC2(op_cache, orangefs_op);
	} else {
		FUNC1("NULL pointer in op_release\n");
	}
}