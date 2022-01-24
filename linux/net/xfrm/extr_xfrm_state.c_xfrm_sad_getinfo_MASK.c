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
struct xfrmk_sadinfo {int /*<<< orphan*/  sadhmcnt; scalar_t__ sadhcnt; int /*<<< orphan*/  sadcnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  xfrm_state_lock; scalar_t__ state_hmask; int /*<<< orphan*/  state_num; } ;
struct net {TYPE_1__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm_state_hashmax ; 

void FUNC2(struct net *net, struct xfrmk_sadinfo *si)
{
	FUNC0(&net->xfrm.xfrm_state_lock);
	si->sadcnt = net->xfrm.state_num;
	si->sadhcnt = net->xfrm.state_hmask + 1;
	si->sadhmcnt = xfrm_state_hashmax;
	FUNC1(&net->xfrm.xfrm_state_lock);
}