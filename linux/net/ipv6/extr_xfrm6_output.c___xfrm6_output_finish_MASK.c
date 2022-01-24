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
struct xfrm_state {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct xfrm_state* xfrm; } ;

/* Variables and functions */
 int FUNC0 (struct xfrm_state*,struct sock*,struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC2(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct xfrm_state *x = FUNC1(skb)->xfrm;

	return FUNC0(x, sk, skb);
}