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
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static inline int FUNC6(struct net_device *dev, struct sk_buff *skb)
{
	int ret;

	if (FUNC1()) {
		FUNC5("bpf: recursion limit reached on datapath, buggy bpf program?\n");
		FUNC4(skb);
		return -ENETDOWN;
	}

	skb->dev = dev;

	FUNC3();
	ret = FUNC0(skb);
	FUNC2();

	return ret;
}