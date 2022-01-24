#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* hard_packet_limit; void* hard_byte_limit; void* soft_packet_limit; void* soft_byte_limit; } ;
struct TYPE_6__ {int /*<<< orphan*/  add_time; } ;
struct TYPE_8__ {int /*<<< orphan*/  function; } ;
struct TYPE_5__ {int /*<<< orphan*/  all; } ;
struct xfrm_state {int /*<<< orphan*/  lock; scalar_t__ replay_maxdiff; scalar_t__ replay_maxage; TYPE_3__ lft; TYPE_2__ curlft; int /*<<< orphan*/  rtimer; TYPE_4__ mtimer; int /*<<< orphan*/  byspi; int /*<<< orphan*/  bysrc; int /*<<< orphan*/  bydst; TYPE_1__ km; int /*<<< orphan*/  tunnel_users; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  xs_net; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_BOOTTIME ; 
 int GFP_ATOMIC ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS_SOFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* XFRM_INF ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xfrm_state* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct net*) ; 
 int /*<<< orphan*/  xfrm_replay_timer_handler ; 
 int /*<<< orphan*/  xfrm_state_cache ; 
 int /*<<< orphan*/  xfrm_timer_handler ; 

struct xfrm_state *FUNC10(struct net *net)
{
	struct xfrm_state *x;

	x = FUNC4(xfrm_state_cache, GFP_ATOMIC | __GFP_ZERO);

	if (x) {
		FUNC9(&x->xs_net, net);
		FUNC6(&x->refcnt, 1);
		FUNC2(&x->tunnel_users, 0);
		FUNC1(&x->km.all);
		FUNC0(&x->bydst);
		FUNC0(&x->bysrc);
		FUNC0(&x->byspi);
		FUNC3(&x->mtimer, CLOCK_BOOTTIME, HRTIMER_MODE_ABS_SOFT);
		x->mtimer.function = xfrm_timer_handler;
		FUNC8(&x->rtimer, xfrm_replay_timer_handler, 0);
		x->curlft.add_time = FUNC5();
		x->lft.soft_byte_limit = XFRM_INF;
		x->lft.soft_packet_limit = XFRM_INF;
		x->lft.hard_byte_limit = XFRM_INF;
		x->lft.hard_packet_limit = XFRM_INF;
		x->replay_maxage = 0;
		x->replay_maxdiff = 0;
		FUNC7(&x->lock);
	}
	return x;
}