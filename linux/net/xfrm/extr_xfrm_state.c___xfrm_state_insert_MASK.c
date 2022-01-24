#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * next; } ;
struct TYPE_8__ {int /*<<< orphan*/  family; int /*<<< orphan*/  saddr; int /*<<< orphan*/  reqid; } ;
struct TYPE_7__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  spi; int /*<<< orphan*/  daddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  all; } ;
struct xfrm_state {TYPE_5__ bydst; scalar_t__ replay_maxage; int /*<<< orphan*/  rtimer; int /*<<< orphan*/  mtimer; TYPE_5__ byspi; TYPE_3__ props; TYPE_2__ id; TYPE_5__ bysrc; TYPE_1__ km; } ;
struct TYPE_9__ {int /*<<< orphan*/  state_num; scalar_t__ state_byspi; scalar_t__ state_bysrc; scalar_t__ state_bydst; int /*<<< orphan*/  state_all; } ;
struct net {TYPE_4__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL_SOFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned int FUNC5 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct net* FUNC9 (struct xfrm_state*) ; 

__attribute__((used)) static void FUNC10(struct xfrm_state *x)
{
	struct net *net = FUNC9(x);
	unsigned int h;

	FUNC3(&x->km.all, &net->xfrm.state_all);

	h = FUNC5(net, &x->id.daddr, &x->props.saddr,
			  x->props.reqid, x->props.family);
	FUNC0(&x->bydst, net->xfrm.state_bydst + h);

	h = FUNC8(net, &x->id.daddr, &x->props.saddr, x->props.family);
	FUNC0(&x->bysrc, net->xfrm.state_bysrc + h);

	if (x->id.spi) {
		h = FUNC7(net, &x->id.daddr, x->id.spi, x->id.proto,
				  x->props.family);

		FUNC0(&x->byspi, net->xfrm.state_byspi + h);
	}

	FUNC1(&x->mtimer, FUNC2(1, 0), HRTIMER_MODE_REL_SOFT);
	if (x->replay_maxage)
		FUNC4(&x->rtimer, jiffies + x->replay_maxage);

	net->xfrm.state_num++;

	FUNC6(net, x->bydst.next != NULL);
}