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
struct sk_buff {int len; } ;

/* Variables and functions */
 int TCP_MIN_GSO_SIZE ; 
 int FUNC0 (struct sk_buff*,struct sk_buff*,int) ; 
 int FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct sk_buff *to, struct sk_buff *from,
		  int pcount, int shiftlen)
{
	/* TCP min gso_size is 8 bytes (TCP_MIN_GSO_SIZE)
	 * Since TCP_SKB_CB(skb)->tcp_gso_segs is 16 bits, we need
	 * to make sure not storing more than 65535 * 8 bytes per skb,
	 * even if current MSS is bigger.
	 */
	if (FUNC2(to->len + shiftlen >= 65535 * TCP_MIN_GSO_SIZE))
		return 0;
	if (FUNC2(FUNC1(to) + pcount > 65535))
		return 0;
	return FUNC0(to, from, shiftlen);
}