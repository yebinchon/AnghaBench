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
struct fuse_req {int /*<<< orphan*/  flags; int /*<<< orphan*/  count; } ;
struct fuse_conn {int /*<<< orphan*/  bg_lock; int /*<<< orphan*/  blocked_waitq; int /*<<< orphan*/  blocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FR_BACKGROUND ; 
 int /*<<< orphan*/  FR_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_req*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct fuse_conn *fc, struct fuse_req *req)
{
	if (FUNC3(&req->count)) {
		if (FUNC6(FR_BACKGROUND, &req->flags)) {
			/*
			 * We get here in the unlikely case that a background
			 * request was allocated but not sent
			 */
			FUNC4(&fc->bg_lock);
			if (!fc->blocked)
				FUNC7(&fc->blocked_waitq);
			FUNC5(&fc->bg_lock);
		}

		if (FUNC6(FR_WAITING, &req->flags)) {
			FUNC0(FR_WAITING, &req->flags);
			FUNC1(fc);
		}

		FUNC2(req);
	}
}