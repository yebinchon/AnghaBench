#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ oseq; } ;
struct xfrm_state {TYPE_4__* repl; TYPE_3__ replay; TYPE_5__* type; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_7__ {scalar_t__ low; scalar_t__ hi; } ;
struct TYPE_8__ {TYPE_1__ output; } ;
struct TYPE_12__ {TYPE_2__ seq; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* notify ) (struct xfrm_state*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOVERFLOW ; 
 int /*<<< orphan*/  XFRM_REPLAY_UPDATE ; 
 TYPE_6__* FUNC0 (struct sk_buff*) ; 
 int XFRM_TYPE_REPLAY_PROT ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_state*,struct sk_buff*) ; 
 struct net* FUNC5 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC6(struct xfrm_state *x, struct sk_buff *skb)
{
	int err = 0;
	struct net *net = FUNC5(x);

	if (x->type->flags & XFRM_TYPE_REPLAY_PROT) {
		FUNC0(skb)->seq.output.low = ++x->replay.oseq;
		FUNC0(skb)->seq.output.hi = 0;
		if (FUNC2(x->replay.oseq == 0)) {
			x->replay.oseq--;
			FUNC4(x, skb);
			err = -EOVERFLOW;

			return err;
		}
		if (FUNC3(net))
			x->repl->notify(x, XFRM_REPLAY_UPDATE);
	}

	return err;
}