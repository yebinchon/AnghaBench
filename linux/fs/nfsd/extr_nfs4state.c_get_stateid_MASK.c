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
struct nfsd4_compound_state {int /*<<< orphan*/  current_stateid; } ;
typedef  int /*<<< orphan*/  stateid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CURRENT_STATE_ID_FLAG ; 
 scalar_t__ FUNC1 (struct nfsd4_compound_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(struct nfsd4_compound_state *cstate, stateid_t *stateid)
{
	if (FUNC1(cstate, CURRENT_STATE_ID_FLAG) && FUNC0(stateid))
		FUNC2(stateid, &cstate->current_stateid, sizeof(stateid_t));
}