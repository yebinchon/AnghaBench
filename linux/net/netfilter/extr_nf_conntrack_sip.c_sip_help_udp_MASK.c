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
struct udphdr {int dummy; } ;
struct sk_buff {unsigned int len; char* data; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int HZ ; 
 int NF_ACCEPT ; 
 int NF_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conn*,struct sk_buff*,int) ; 
 int FUNC1 (struct sk_buff*,struct nf_conn*,unsigned int,unsigned int,char const**,unsigned int*) ; 
 int sip_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 unsigned int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, unsigned int protoff,
			struct nf_conn *ct, enum ip_conntrack_info ctinfo)
{
	unsigned int dataoff, datalen;
	const char *dptr;

	/* No Data ? */
	dataoff = protoff + sizeof(struct udphdr);
	if (dataoff >= skb->len)
		return NF_ACCEPT;

	FUNC0(ct, skb, sip_timeout * HZ);

	if (FUNC4(FUNC2(skb)))
		return NF_DROP;

	dptr = skb->data + dataoff;
	datalen = skb->len - dataoff;
	if (datalen < FUNC3("SIP/2.0 200"))
		return NF_ACCEPT;

	return FUNC1(skb, ct, protoff, dataoff, &dptr, &datalen);
}