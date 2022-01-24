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
struct TYPE_4__ {TYPE_1__* sc_client; } ;
struct nfs4_ol_stateid {TYPE_2__ st_stid; } ;
struct TYPE_3__ {int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_ol_stateid*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reaplist ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct nfs4_ol_stateid*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nfs4_ol_stateid *stp)
{
	FUNC0(reaplist);

	FUNC3(&stp->st_stid.sc_client->cl_lock);
	if (FUNC5(stp, &reaplist))
		FUNC2(stp, &reaplist);
	FUNC4(&stp->st_stid.sc_client->cl_lock);
	FUNC1(&reaplist);
}