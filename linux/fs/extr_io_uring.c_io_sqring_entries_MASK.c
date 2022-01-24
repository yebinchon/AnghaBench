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
struct TYPE_2__ {int /*<<< orphan*/  tail; } ;
struct io_rings {TYPE_1__ sq; } ;
struct io_ring_ctx {unsigned int cached_sq_head; struct io_rings* rings; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline unsigned int FUNC1(struct io_ring_ctx *ctx)
{
	struct io_rings *rings = ctx->rings;

	/* make sure SQ entry isn't read before tail */
	return FUNC0(&rings->sq.tail) - ctx->cached_sq_head;
}