#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nfsd_net {int /*<<< orphan*/  s2s_cp_cl_id; int /*<<< orphan*/  boot_time; int /*<<< orphan*/  s2s_cp_lock; int /*<<< orphan*/  s2s_cp_stateids; } ;
struct TYPE_4__ {int /*<<< orphan*/  cl_id; int /*<<< orphan*/  cl_boot; } ;
struct TYPE_5__ {int so_id; TYPE_1__ so_clid; } ;
struct TYPE_6__ {TYPE_2__ si_opaque; } ;
struct nfsd4_copy {TYPE_3__ cp_stateid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int FUNC0 (int /*<<< orphan*/ *,struct nfsd4_copy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct nfsd_net *nn, struct nfsd4_copy *copy)
{
	int new_id;

	FUNC1(GFP_KERNEL);
	FUNC3(&nn->s2s_cp_lock);
	new_id = FUNC0(&nn->s2s_cp_stateids, copy, 0, 0, GFP_NOWAIT);
	FUNC4(&nn->s2s_cp_lock);
	FUNC2();
	if (new_id < 0)
		return 0;
	copy->cp_stateid.si_opaque.so_id = new_id;
	copy->cp_stateid.si_opaque.so_clid.cl_boot = nn->boot_time;
	copy->cp_stateid.si_opaque.so_clid.cl_id = nn->s2s_cp_cl_id;
	return 1;
}