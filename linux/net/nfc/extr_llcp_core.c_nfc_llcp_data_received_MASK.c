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
struct nfc_llcp_local {int dummy; } ;
struct nfc_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct nfc_llcp_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct nfc_llcp_local* FUNC2 (struct nfc_dev*) ; 

int FUNC3(struct nfc_dev *dev, struct sk_buff *skb)
{
	struct nfc_llcp_local *local;

	local = FUNC2(dev);
	if (local == NULL) {
		FUNC1(skb);
		return -ENODEV;
	}

	FUNC0(local, skb);

	return 0;
}