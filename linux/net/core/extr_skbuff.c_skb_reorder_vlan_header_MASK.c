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
struct sk_buff {void* data; int mac_header; } ;

/* Variables and functions */
 int ETH_TLEN ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 void* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct sk_buff *skb)
{
	int mac_len, meta_len;
	void *meta;

	if (FUNC3(skb, FUNC4(skb)) < 0) {
		FUNC0(skb);
		return NULL;
	}

	mac_len = skb->data - FUNC5(skb);
	if (FUNC1(mac_len > VLAN_HLEN + ETH_TLEN)) {
		FUNC2(FUNC5(skb) + VLAN_HLEN, FUNC5(skb),
			mac_len - VLAN_HLEN - ETH_TLEN);
	}

	meta_len = FUNC7(skb);
	if (meta_len) {
		meta = FUNC6(skb) - meta_len;
		FUNC2(meta + VLAN_HLEN, meta, meta_len);
	}

	skb->mac_header += VLAN_HLEN;
	return skb;
}