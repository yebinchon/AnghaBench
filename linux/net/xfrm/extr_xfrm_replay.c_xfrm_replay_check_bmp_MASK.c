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
struct TYPE_2__ {int /*<<< orphan*/  replay; int /*<<< orphan*/  replay_window; } ;
struct xfrm_state {TYPE_1__ stats; struct xfrm_replay_state_esn* replay_esn; } ;
struct xfrm_replay_state_esn {scalar_t__ seq; scalar_t__ replay_window; unsigned int* bmp; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_state*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct xfrm_state *x,
				 struct sk_buff *skb, __be32 net_seq)
{
	unsigned int bitnr, nr;
	struct xfrm_replay_state_esn *replay_esn = x->replay_esn;
	u32 pos;
	u32 seq = FUNC1(net_seq);
	u32 diff =  replay_esn->seq - seq;

	if (!replay_esn->replay_window)
		return 0;

	if (FUNC2(seq == 0))
		goto err;

	if (FUNC0(seq > replay_esn->seq))
		return 0;

	if (diff >= replay_esn->replay_window) {
		x->stats.replay_window++;
		goto err;
	}

	pos = (replay_esn->seq - 1) % replay_esn->replay_window;

	if (pos >= diff)
		bitnr = (pos - diff) % replay_esn->replay_window;
	else
		bitnr = replay_esn->replay_window - (diff - pos);

	nr = bitnr >> 5;
	bitnr = bitnr & 0x1F;
	if (replay_esn->bmp[nr] & (1U << bitnr))
		goto err_replay;

	return 0;

err_replay:
	x->stats.replay++;
err:
	FUNC3(x, skb, net_seq);
	return -EINVAL;
}