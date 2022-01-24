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
struct rpcrdma_sendctx {TYPE_1__* sc_xprt; } ;
struct rpcrdma_buffer {unsigned long rb_sc_tail; struct rpcrdma_sendctx** rb_sc_ctxs; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_xprt; struct rpcrdma_buffer rx_buf; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct rpcrdma_buffer*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct rpcrdma_sendctx*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct rpcrdma_sendctx *sc)
{
	struct rpcrdma_buffer *buf = &sc->sc_xprt->rx_buf;
	unsigned long next_tail;

	/* Unmap SGEs of previously completed but unsignaled
	 * Sends by walking up the queue until @sc is found.
	 */
	next_tail = buf->rb_sc_tail;
	do {
		next_tail = FUNC0(buf, next_tail);

		/* ORDER: item must be accessed _before_ tail is updated */
		FUNC1(buf->rb_sc_ctxs[next_tail]);

	} while (buf->rb_sc_ctxs[next_tail] != sc);

	/* Paired with READ_ONCE */
	FUNC2(&buf->rb_sc_tail, next_tail);

	FUNC3(&sc->sc_xprt->rx_xprt);
}