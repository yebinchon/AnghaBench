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
struct TYPE_2__ {unsigned int mrs_allocated; } ;
struct rpcrdma_ia {unsigned int ri_max_segs; } ;
struct rpcrdma_buffer {int /*<<< orphan*/  rb_lock; int /*<<< orphan*/  rb_all_mrs; int /*<<< orphan*/  rb_mrs; } ;
struct rpcrdma_xprt {TYPE_1__ rx_stats; struct rpcrdma_ia rx_ia; struct rpcrdma_buffer rx_buf; } ;
struct rpcrdma_mr {int /*<<< orphan*/  mr_all; int /*<<< orphan*/  mr_list; struct rpcrdma_xprt* mr_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC0 (struct rpcrdma_ia*,struct rpcrdma_mr*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpcrdma_mr*) ; 
 struct rpcrdma_mr* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rpcrdma_xprt*,unsigned int) ; 

__attribute__((used)) static void
FUNC7(struct rpcrdma_xprt *r_xprt)
{
	struct rpcrdma_buffer *buf = &r_xprt->rx_buf;
	struct rpcrdma_ia *ia = &r_xprt->rx_ia;
	unsigned int count;

	for (count = 0; count < ia->ri_max_segs; count++) {
		struct rpcrdma_mr *mr;
		int rc;

		mr = FUNC2(sizeof(*mr), GFP_NOFS);
		if (!mr)
			break;

		rc = FUNC0(ia, mr);
		if (rc) {
			FUNC1(mr);
			break;
		}

		mr->mr_xprt = r_xprt;

		FUNC4(&buf->rb_lock);
		FUNC3(&mr->mr_list, &buf->rb_mrs);
		FUNC3(&mr->mr_all, &buf->rb_all_mrs);
		FUNC5(&buf->rb_lock);
	}

	r_xprt->rx_stats.mrs_allocated += count;
	FUNC6(r_xprt, count);
}