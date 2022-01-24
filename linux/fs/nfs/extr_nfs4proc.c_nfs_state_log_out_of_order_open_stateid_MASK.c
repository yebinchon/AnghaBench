#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  seqid; } ;
struct nfs4_state {int /*<<< orphan*/  flags; TYPE_1__ open_stateid; } ;
struct TYPE_5__ {int /*<<< orphan*/  seqid; } ;
typedef  TYPE_2__ nfs4_stateid ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_STATE_CHANGE_WAIT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nfs4_state *state,
		const nfs4_stateid *stateid)
{
	u32 state_seqid = FUNC0(state->open_stateid.seqid);
	u32 stateid_seqid = FUNC0(stateid->seqid);

	if (stateid_seqid == state_seqid + 1U ||
	    (stateid_seqid == 1U && state_seqid == 0xffffffffU))
		FUNC1(state);
	else
		FUNC2(NFS_STATE_CHANGE_WAIT, &state->flags);
}