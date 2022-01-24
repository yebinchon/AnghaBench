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
struct rpc_task {int /*<<< orphan*/  tk_start; } ;
struct nfs4_ff_layout_mirror {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  read_stat; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_FF_MIRROR_STAT_AVAIL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct rpc_task *task,
		struct nfs4_ff_layout_mirror *mirror,
		__u64 requested,
		__u64 completed)
{
	FUNC3(&mirror->lock);
	FUNC1(&mirror->read_stat,
			requested, completed,
			FUNC0(), task->tk_start);
	FUNC2(NFS4_FF_MIRROR_STAT_AVAIL, &mirror->flags);
	FUNC4(&mirror->lock);
}