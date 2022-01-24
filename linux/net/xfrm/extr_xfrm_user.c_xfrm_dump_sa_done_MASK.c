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
struct xfrm_state_walk {int dummy; } ;
struct sock {int dummy; } ;
struct netlink_callback {scalar_t__* args; TYPE_1__* skb; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct sock* sk; } ;

/* Variables and functions */
 struct net* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_state_walk*,struct net*) ; 

__attribute__((used)) static int FUNC2(struct netlink_callback *cb)
{
	struct xfrm_state_walk *walk = (struct xfrm_state_walk *) &cb->args[1];
	struct sock *sk = cb->skb->sk;
	struct net *net = FUNC0(sk);

	if (cb->args[0])
		FUNC1(walk, net);
	return 0;
}