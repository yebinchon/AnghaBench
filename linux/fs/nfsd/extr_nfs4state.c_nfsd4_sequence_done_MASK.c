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
struct nfsd4_compound_state {scalar_t__ status; scalar_t__ clp; int /*<<< orphan*/  session; TYPE_1__* slot; } ;
struct nfsd4_compoundres {struct nfsd4_compound_state cstate; } ;
struct TYPE_2__ {int /*<<< orphan*/  sl_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD4_SLOT_INUSE ; 
 scalar_t__ FUNC0 (struct nfsd4_compound_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd4_compoundres*) ; 
 scalar_t__ nfserr_replay_cache ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void
FUNC4(struct nfsd4_compoundres *resp)
{
	struct nfsd4_compound_state *cs = &resp->cstate;

	if (FUNC0(cs)) {
		if (cs->status != nfserr_replay_cache) {
			FUNC2(resp);
			cs->slot->sl_flags &= ~NFSD4_SLOT_INUSE;
		}
		/* Drop session reference that was taken in nfsd4_sequence() */
		FUNC1(cs->session);
	} else if (cs->clp)
		FUNC3(cs->clp);
}