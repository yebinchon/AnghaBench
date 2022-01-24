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
struct sk_buff {unsigned char* data; int /*<<< orphan*/  pkt_type; } ;
struct dn_skb_cb {int rt_flags; } ;

/* Variables and functions */
 unsigned char DN_RT_F_PF ; 
 int DN_RT_F_RQR ; 
 int DN_RT_F_RTS ; 
 struct dn_skb_cb* FUNC0 (struct sk_buff*) ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  PACKET_OUTGOING ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned char*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb)
{
	struct dn_skb_cb *cb;
	unsigned char *ptr;
	unsigned char *src_addr, *dst_addr;
	unsigned char tmp[ETH_ALEN];

	/* Add back all headers */
	FUNC4(skb, skb->data - FUNC3(skb));

	if ((skb = FUNC5(skb, GFP_ATOMIC)) == NULL)
		return NET_RX_DROP;

	cb = FUNC0(skb);
	/* Ignore packet length and point to flags */
	ptr = skb->data + 2;

	/* Skip padding */
	if (*ptr & DN_RT_F_PF) {
		char padlen = (*ptr & ~DN_RT_F_PF);
		ptr += padlen;
	}

	*ptr++ = (cb->rt_flags & ~DN_RT_F_RQR) | DN_RT_F_RTS;
	ptr += 2;
	dst_addr = ptr;
	ptr += 8;
	src_addr = ptr;
	ptr += 6;
	*ptr = 0; /* Zero hop count */

	/* Swap source and destination */
	FUNC2(tmp, src_addr, ETH_ALEN);
	FUNC2(src_addr, dst_addr, ETH_ALEN);
	FUNC2(dst_addr, tmp, ETH_ALEN);

	skb->pkt_type = PACKET_OUTGOING;
	FUNC1(skb, dst_addr, src_addr);
	return NET_RX_SUCCESS;
}