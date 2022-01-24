#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ in; } ;
struct fuse_conn {int /*<<< orphan*/  pid_ns; int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct fuse_conn *fc, struct fuse_req *req)
{
	req->in.h.uid = FUNC3(fc->user_ns, FUNC1());
	req->in.h.gid = FUNC2(fc->user_ns, FUNC0());
	req->in.h.pid = FUNC4(FUNC5(current), fc->pid_ns);
}