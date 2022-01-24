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
struct sk_buff {unsigned int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,unsigned int) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct sk_buff *skb,
					       unsigned int transport_len)
{
	struct sk_buff *skb_chk;
	unsigned int len = FUNC3(skb) + transport_len;
	int ret;

	if (skb->len < len)
		return NULL;
	else if (skb->len == len)
		return skb;

	skb_chk = FUNC2(skb, GFP_ATOMIC);
	if (!skb_chk)
		return NULL;

	ret = FUNC1(skb_chk, len);
	if (ret) {
		FUNC0(skb_chk);
		return NULL;
	}

	return skb_chk;
}