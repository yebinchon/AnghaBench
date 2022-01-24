#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t length; } ;
struct rpcrdma_regbuf {TYPE_1__ rg_iov; void* rg_data; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpcrdma_regbuf*) ; 

bool FUNC3(struct rpcrdma_regbuf *rb, size_t size, gfp_t flags)
{
	void *buf;

	buf = FUNC1(size, flags);
	if (!buf)
		return false;

	FUNC2(rb);
	FUNC0(rb->rg_data);

	rb->rg_data = buf;
	rb->rg_iov.length = size;
	return true;
}