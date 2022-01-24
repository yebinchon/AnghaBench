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
struct nfs4_stateowner {TYPE_1__* so_ops; int /*<<< orphan*/  so_count; struct nfs4_client* so_client; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* so_unhash ) (struct nfs4_stateowner*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_stateowner*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_stateowner*) ; 

__attribute__((used)) static void FUNC5(struct nfs4_stateowner *sop)
{
	struct nfs4_client *clp = sop->so_client;

	FUNC1(&clp->cl_lock);

	if (!FUNC0(&sop->so_count, &clp->cl_lock))
		return;
	sop->so_ops->so_unhash(sop);
	FUNC3(&clp->cl_lock);
	FUNC2(sop);
}