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
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_state {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xfrm_state_lock; } ;
struct net {TYPE_1__ xfrm; } ;

/* Variables and functions */
 struct xfrm_state* FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct xfrm_state *
FUNC3(struct net *net, u32 mark,
			 const xfrm_address_t *daddr, const xfrm_address_t *saddr,
			 u8 proto, unsigned short family)
{
	struct xfrm_state *x;

	FUNC1(&net->xfrm.xfrm_state_lock);
	x = FUNC0(net, mark, daddr, saddr, proto, family);
	FUNC2(&net->xfrm.xfrm_state_lock);
	return x;
}