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
struct rpcrdma_buffer {int /*<<< orphan*/  rb_lock; int /*<<< orphan*/  rb_mrs; } ;
struct rpcrdma_xprt {struct rpcrdma_buffer rx_buf; } ;
struct rpcrdma_mr {int dummy; } ;

/* Variables and functions */
 struct rpcrdma_mr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct rpcrdma_mr *
FUNC3(struct rpcrdma_xprt *r_xprt)
{
	struct rpcrdma_buffer *buf = &r_xprt->rx_buf;
	struct rpcrdma_mr *mr;

	FUNC1(&buf->rb_lock);
	mr = FUNC0(&buf->rb_mrs);
	FUNC2(&buf->rb_lock);
	return mr;
}