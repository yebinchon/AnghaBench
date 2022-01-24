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
struct fuse_req {int /*<<< orphan*/  flags; int /*<<< orphan*/  count; int /*<<< orphan*/  waitq; int /*<<< orphan*/  intr_entry; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FR_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct fuse_req *req)
{
	FUNC0(&req->list);
	FUNC0(&req->intr_entry);
	FUNC2(&req->waitq);
	FUNC3(&req->count, 1);
	FUNC1(FR_PENDING, &req->flags);
}