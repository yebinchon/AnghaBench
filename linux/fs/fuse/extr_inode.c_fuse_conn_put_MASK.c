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
struct fuse_iqueue {TYPE_1__* ops; } ;
struct fuse_conn {int /*<<< orphan*/  (* release ) (struct fuse_conn*) ;int /*<<< orphan*/  user_ns; int /*<<< orphan*/  pid_ns; struct fuse_iqueue iq; int /*<<< orphan*/  count; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release ) (struct fuse_iqueue*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_iqueue*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_conn*) ; 

void FUNC5(struct fuse_conn *fc)
{
	if (FUNC2(&fc->count)) {
		struct fuse_iqueue *fiq = &fc->iq;

		if (fiq->ops->release)
			fiq->ops->release(fiq);
		FUNC0(fc->pid_ns);
		FUNC1(fc->user_ns);
		fc->release(fc);
	}
}