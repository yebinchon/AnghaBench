#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_7__ {int /*<<< orphan*/  seqid; } ;
struct nfs4_state {int /*<<< orphan*/  seqlock; TYPE_4__ open_stateid; } ;
typedef  scalar_t__ s32 ;
struct TYPE_6__ {int /*<<< orphan*/  seqid; } ;
typedef  TYPE_1__ nfs4_stateid ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_state*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_state*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(nfs4_stateid *dst,
		struct nfs4_state *state)
{
	__be32 seqid_open;
	u32 dst_seqid;
	int seq;

	for (;;) {
		if (!FUNC3(state))
			break;
		seq = FUNC4(&state->seqlock);
		if (!FUNC1(state, dst)) {
			FUNC2(dst, &state->open_stateid);
			if (FUNC5(&state->seqlock, seq))
				continue;
			break;
		}
		seqid_open = state->open_stateid.seqid;
		if (FUNC5(&state->seqlock, seq))
			continue;

		dst_seqid = FUNC0(dst->seqid);
		if ((s32)(dst_seqid - FUNC0(seqid_open)) < 0)
			dst->seqid = seqid_open;
		break;
	}
}