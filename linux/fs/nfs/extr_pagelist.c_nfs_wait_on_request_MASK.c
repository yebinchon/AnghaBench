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
struct nfs_page {int /*<<< orphan*/  wb_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_BUSY ; 
 int /*<<< orphan*/  PG_CONTENDED2 ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct nfs_page *req)
{
	if (!FUNC2(PG_BUSY, &req->wb_flags))
		return 0;
	FUNC0(PG_CONTENDED2, &req->wb_flags);
	FUNC1();
	return FUNC3(&req->wb_flags, PG_BUSY,
			      TASK_UNINTERRUPTIBLE);
}