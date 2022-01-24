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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int flags; } ;
struct xfrm_state {TYPE_1__ props; struct xfrm_replay_state_esn* replay_esn; } ;
struct xfrm_replay_state_esn {scalar_t__ seq_hi; scalar_t__ seq; int replay_window; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int XFRM_STATE_ESN ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

u32 FUNC3(struct xfrm_state *x, __be32 net_seq)
{
	u32 seq, seq_hi, bottom;
	struct xfrm_replay_state_esn *replay_esn = x->replay_esn;

	if (!(x->props.flags & XFRM_STATE_ESN))
		return 0;

	seq = FUNC1(net_seq);
	seq_hi = replay_esn->seq_hi;
	bottom = replay_esn->seq - replay_esn->replay_window + 1;

	if (FUNC0(replay_esn->seq >= replay_esn->replay_window - 1)) {
		/* A. same subspace */
		if (FUNC2(seq < bottom))
			seq_hi++;
	} else {
		/* B. window spans two subspaces */
		if (FUNC2(seq >= bottom))
			seq_hi--;
	}

	return seq_hi;
}