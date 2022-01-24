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
struct io_ring_ctx {int dummy; } ;
struct TYPE_2__ {int done; } ;
struct io_kiocb {int /*<<< orphan*/  user_data; TYPE_1__ poll; } ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct io_ring_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct io_ring_ctx *ctx, struct io_kiocb *req,
			     __poll_t mask)
{
	req->poll.done = true;
	FUNC1(ctx, req->user_data, FUNC2(mask));
	FUNC0(ctx);
}