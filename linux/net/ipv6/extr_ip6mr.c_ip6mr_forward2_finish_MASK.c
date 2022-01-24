#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTFORWDATAGRAMS ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTOCTETS ; 
 int FUNC2 (struct net*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC5(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	FUNC1(net, FUNC3(FUNC4(skb)),
		      IPSTATS_MIB_OUTFORWDATAGRAMS);
	FUNC0(net, FUNC3(FUNC4(skb)),
		      IPSTATS_MIB_OUTOCTETS, skb->len);
	return FUNC2(net, sk, skb);
}