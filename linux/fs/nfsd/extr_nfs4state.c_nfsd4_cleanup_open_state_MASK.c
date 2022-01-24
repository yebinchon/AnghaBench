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
struct nfsd4_open {scalar_t__ op_odstate; TYPE_2__* op_stp; scalar_t__ op_file; TYPE_1__* op_openowner; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_stateowner {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  st_stid; } ;
struct TYPE_3__ {struct nfs4_stateowner oo_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  file_slab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_stateowner*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsd4_compound_state*,struct nfs4_stateowner*) ; 
 int /*<<< orphan*/  odstate_slab ; 

void FUNC4(struct nfsd4_compound_state *cstate,
			      struct nfsd4_open *open)
{
	if (open->op_openowner) {
		struct nfs4_stateowner *so = &open->op_openowner->oo_owner;

		FUNC3(cstate, so);
		FUNC1(so);
	}
	if (open->op_file)
		FUNC0(file_slab, open->op_file);
	if (open->op_stp)
		FUNC2(&open->op_stp->st_stid);
	if (open->op_odstate)
		FUNC0(odstate_slab, open->op_odstate);
}