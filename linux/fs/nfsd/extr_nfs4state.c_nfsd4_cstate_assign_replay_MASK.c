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
struct nfsd4_compound_state {int /*<<< orphan*/  replay_owner; } ;
struct TYPE_2__ {int /*<<< orphan*/  rp_mutex; } ;
struct nfs4_stateowner {TYPE_1__ so_replay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_stateowner*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd4_compound_state*) ; 

__attribute__((used)) static void FUNC3(struct nfsd4_compound_state *cstate,
		struct nfs4_stateowner *so)
{
	if (!FUNC2(cstate)) {
		FUNC0(&so->so_replay.rp_mutex);
		cstate->replay_owner = FUNC1(so);
	}
}