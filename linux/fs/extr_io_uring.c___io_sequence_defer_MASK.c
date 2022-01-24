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
struct io_ring_ctx {scalar_t__ cached_cq_tail; scalar_t__ cached_sq_dropped; int /*<<< orphan*/  cached_cq_overflow; } ;
struct io_kiocb {scalar_t__ sequence; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC1(struct io_ring_ctx *ctx,
				       struct io_kiocb *req)
{
	return req->sequence != ctx->cached_cq_tail + ctx->cached_sq_dropped
					+ FUNC0(&ctx->cached_cq_overflow);
}