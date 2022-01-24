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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (struct net_device*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct sk_buff*,int) ; 

bool FUNC3(struct net_device *dev,
			      struct sk_buff *skb, bool unencrypted)
{
	int ret;

	FUNC2(dev, skb, unencrypted);
	ret = FUNC0(dev, skb, unencrypted, GFP_ATOMIC);
	FUNC1(ret == 0);
	return ret == 0;
}