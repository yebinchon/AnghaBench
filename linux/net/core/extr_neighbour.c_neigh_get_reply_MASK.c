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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct neighbour {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTM_NEWNEIGH ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,struct neighbour*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net *net, struct neighbour *neigh,
			   u32 pid, u32 seq)
{
	struct sk_buff *skb;
	int err = 0;

	skb = FUNC3(FUNC2(), GFP_KERNEL);
	if (!skb)
		return -ENOBUFS;

	err = FUNC1(skb, neigh, pid, seq, RTM_NEWNEIGH, 0);
	if (err) {
		FUNC0(skb);
		goto errout;
	}

	err = FUNC4(skb, net, pid);
errout:
	return err;
}