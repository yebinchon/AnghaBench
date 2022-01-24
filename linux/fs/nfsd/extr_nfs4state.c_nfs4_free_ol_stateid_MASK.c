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
struct nfs4_stid {int dummy; } ;
struct nfs4_ol_stateid {scalar_t__ st_stateowner; int /*<<< orphan*/  st_clnt_odstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nfs4_stid*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct nfs4_ol_stateid* FUNC2 (struct nfs4_stid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_ol_stateid*) ; 
 int /*<<< orphan*/  stateid_slab ; 

__attribute__((used)) static void FUNC5(struct nfs4_stid *stid)
{
	struct nfs4_ol_stateid *stp = FUNC2(stid);

	FUNC3(stp->st_clnt_odstate);
	FUNC4(stp);
	if (stp->st_stateowner)
		FUNC1(stp->st_stateowner);
	FUNC0(stateid_slab, stid);
}