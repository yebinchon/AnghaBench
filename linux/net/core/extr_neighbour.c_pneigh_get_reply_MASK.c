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
struct pneigh_entry {int dummy; } ;
struct net {int dummy; } ;
struct neigh_table {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTM_NEWNEIGH ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct pneigh_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct neigh_table*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net *net, struct pneigh_entry *neigh,
			    u32 pid, u32 seq, struct neigh_table *tbl)
{
	struct sk_buff *skb;
	int err = 0;

	skb = FUNC1(FUNC3(), GFP_KERNEL);
	if (!skb)
		return -ENOBUFS;

	err = FUNC2(skb, neigh, pid, seq, RTM_NEWNEIGH, 0, tbl);
	if (err) {
		FUNC0(skb);
		goto errout;
	}

	err = FUNC4(skb, net, pid);
errout:
	return err;
}