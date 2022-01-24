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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct bpf_redirect_info {int /*<<< orphan*/  flags; scalar_t__ tgt_index; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpf_redirect_info ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct bpf_redirect_info* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct sk_buff *skb)
{
	struct bpf_redirect_info *ri = FUNC4(&bpf_redirect_info);
	struct net_device *dev;

	dev = FUNC1(FUNC2(skb->dev), ri->tgt_index);
	ri->tgt_index = 0;
	if (FUNC5(!dev)) {
		FUNC3(skb);
		return -EINVAL;
	}

	return FUNC0(skb, dev, ri->flags);
}