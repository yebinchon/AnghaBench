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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sk_buff {int len; } ;
struct iphdr {int frag_off; int ihl; int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  _iph ;

/* Variables and functions */
 int /*<<< orphan*/  IP_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int,int) ; 
 struct iphdr* FUNC2 (struct sk_buff const*,unsigned int,int,struct iphdr*) ; 

__attribute__((used)) static int FUNC3(const struct sk_buff *skb, unsigned int nhoff,
			    u_int8_t *protonum)
{
	int dataoff = -1;
	const struct iphdr *iph;
	struct iphdr _iph;

	iph = FUNC2(skb, nhoff, sizeof(_iph), &_iph);
	if (!iph)
		return -1;

	/* Conntrack defragments packets, we might still see fragments
	 * inside ICMP packets though.
	 */
	if (iph->frag_off & FUNC0(IP_OFFSET))
		return -1;

	dataoff = nhoff + (iph->ihl << 2);
	*protonum = iph->protocol;

	/* Check bogus IP headers */
	if (dataoff > skb->len) {
		FUNC1("bogus IPv4 packet: nhoff %u, ihl %u, skblen %u\n",
			 nhoff, iph->ihl << 2, skb->len);
		return -1;
	}
	return dataoff;
}