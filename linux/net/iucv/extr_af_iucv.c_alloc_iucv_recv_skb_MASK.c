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
struct sk_buff {unsigned long len; unsigned long data_len; } ;
struct iucv_array {int dummy; } ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int MAX_SKB_FRAGS ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long,int) ; 
 struct sk_buff* FUNC1 (size_t,unsigned long,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,size_t) ; 

__attribute__((used)) static struct sk_buff *FUNC4(unsigned long len)
{
	size_t headroom, linear;
	struct sk_buff *skb;
	int err;

	if (len < PAGE_SIZE) {
		headroom = 0;
		linear = len;
	} else {
		headroom = sizeof(struct iucv_array) * (MAX_SKB_FRAGS + 1);
		linear = PAGE_SIZE - headroom;
	}
	skb = FUNC1(headroom + linear, len - linear,
				   0, &err, GFP_ATOMIC | GFP_DMA);
	FUNC0(!skb,
		  "alloc of recv iucv skb len=%lu failed with errcode=%d\n",
		  len, err);
	if (skb) {
		if (headroom)
			FUNC3(skb, headroom);
		FUNC2(skb, linear);
		skb->len = len;
		skb->data_len = len - linear;
	}
	return skb;
}