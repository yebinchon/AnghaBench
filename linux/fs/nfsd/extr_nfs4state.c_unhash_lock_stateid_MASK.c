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
struct nfs4_ol_stateid {TYPE_2__ st_stid; int /*<<< orphan*/  st_locks; } ;
struct TYPE_3__ {int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (struct nfs4_ol_stateid*) ; 

__attribute__((used)) static bool FUNC4(struct nfs4_ol_stateid *stp)
{
	FUNC1(&stp->st_stid.sc_client->cl_lock);

	FUNC0(&stp->st_locks);
	FUNC2(&stp->st_stid);
	return FUNC3(stp);
}