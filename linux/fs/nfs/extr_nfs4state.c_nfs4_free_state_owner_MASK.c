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
struct TYPE_4__ {int /*<<< orphan*/  owner_id; } ;
struct nfs4_state_owner {TYPE_2__ so_seqid; TYPE_1__* so_server; int /*<<< orphan*/  so_cred; } ;
struct TYPE_3__ {int /*<<< orphan*/  openowner_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_state_owner*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nfs4_state_owner *sp)
{
	FUNC2(&sp->so_seqid);
	FUNC3(sp->so_cred);
	FUNC0(&sp->so_server->openowner_id, sp->so_seqid.owner_id);
	FUNC1(sp);
}