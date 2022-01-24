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
struct nfc_dev {int dep_link_up; } ;

/* Variables and functions */
 int ENOLINK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct nfc_dev*,struct sk_buff*) ; 

int FUNC2(struct nfc_dev *dev, struct sk_buff *skb)
{
	/* Only LLCP target mode for now */
	if (dev->dep_link_up == false) {
		FUNC0(skb);
		return -ENOLINK;
	}

	return FUNC1(dev, skb);
}