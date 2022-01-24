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
struct TYPE_2__ {struct nfs4_client* sc_client; } ;
struct nfs4_ol_stateid {TYPE_1__ st_stid; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nfs4_ol_stateid*) ; 

__attribute__((used)) static void FUNC4(struct nfs4_ol_stateid *stp)
{
	struct nfs4_client *clp = stp->st_stid.sc_client;
	bool unhashed;

	FUNC1(&clp->cl_lock);
	unhashed = FUNC3(stp);
	FUNC2(&clp->cl_lock);
	if (unhashed)
		FUNC0(&stp->st_stid);
}