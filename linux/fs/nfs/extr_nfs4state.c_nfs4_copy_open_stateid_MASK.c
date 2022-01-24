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
struct nfs4_state {int /*<<< orphan*/  open_stateid; int /*<<< orphan*/  flags; int /*<<< orphan*/  seqlock; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_OPEN_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zero_stateid ; 

bool FUNC4(nfs4_stateid *dst, struct nfs4_state *state)
{
	bool ret;
	const nfs4_stateid *src;
	int seq;

	do {
		ret = false;
		src = &zero_stateid;
		seq = FUNC1(&state->seqlock);
		if (FUNC3(NFS_OPEN_STATE, &state->flags)) {
			src = &state->open_stateid;
			ret = true;
		}
		FUNC0(dst, src);
	} while (FUNC2(&state->seqlock, seq));
	return ret;
}