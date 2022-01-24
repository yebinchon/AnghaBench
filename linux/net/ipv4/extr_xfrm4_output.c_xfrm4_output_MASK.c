#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int IPSKB_REROUTED ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,struct sock*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NF_INET_POST_ROUTING ; 
 int /*<<< orphan*/  __xfrm4_output ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 

int FUNC3(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	return FUNC1(NFPROTO_IPV4, NF_INET_POST_ROUTING,
			    net, sk, skb, NULL, FUNC2(skb)->dev,
			    __xfrm4_output,
			    !(FUNC0(skb)->flags & IPSKB_REROUTED));
}