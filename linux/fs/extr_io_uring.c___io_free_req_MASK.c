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
struct io_kiocb {int flags; TYPE_1__* ctx; scalar_t__ file; } ;
struct TYPE_2__ {int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int REQ_F_FIXED_FILE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct io_kiocb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  req_cachep ; 

__attribute__((used)) static void FUNC3(struct io_kiocb *req)
{
	if (req->file && !(req->flags & REQ_F_FIXED_FILE))
		FUNC0(req->file);
	FUNC2(&req->ctx->refs);
	FUNC1(req_cachep, req);
}