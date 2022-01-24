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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct fuse_req {TYPE_1__ waitq; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FR_ABORTED ; 
 int /*<<< orphan*/  FR_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct fuse_req *req)
{
	int err = 0;
	if (req) {
		FUNC1(&req->waitq.lock);
		if (FUNC3(FR_ABORTED, &req->flags))
			err = -ENOENT;
		else
			FUNC0(FR_LOCKED, &req->flags);
		FUNC2(&req->waitq.lock);
	}
	return err;
}