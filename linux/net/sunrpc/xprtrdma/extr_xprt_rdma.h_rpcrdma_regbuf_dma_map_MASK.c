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
struct rpcrdma_xprt {int dummy; } ;
struct rpcrdma_regbuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rpcrdma_xprt*,struct rpcrdma_regbuf*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpcrdma_regbuf*) ; 

__attribute__((used)) static inline bool FUNC3(struct rpcrdma_xprt *r_xprt,
					  struct rpcrdma_regbuf *rb)
{
	if (FUNC1(FUNC2(rb)))
		return true;
	return FUNC0(r_xprt, rb);
}