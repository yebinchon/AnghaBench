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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC2 (int) ; 

int FUNC3(struct net *net, struct sk_buff *skb)
{
	int err;

	err = FUNC1(net, skb->sk, skb);
	if (err) {
		if (err > 0)
			err = FUNC2(err);
		if (err)
			FUNC0(net, IPSTATS_MIB_OUTDISCARDS);
	}

	return err;
}