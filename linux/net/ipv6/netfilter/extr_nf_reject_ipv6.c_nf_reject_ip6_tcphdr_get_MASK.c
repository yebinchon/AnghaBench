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
typedef  scalar_t__ u8 ;
typedef  struct tcphdr {scalar_t__ rst; } const tcphdr ;
struct sk_buff {int data; int len; } ;
struct ipv6hdr {scalar_t__ nexthdr; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ IPPROTO_TCP ; 
 struct ipv6hdr* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct tcphdr const* FUNC4 (struct sk_buff*,int,int,struct tcphdr const*) ; 

const struct tcphdr *FUNC5(struct sk_buff *oldskb,
					      struct tcphdr *otcph,
					      unsigned int *otcplen, int hook)
{
	const struct ipv6hdr *oip6h = FUNC0(oldskb);
	u8 proto;
	__be16 frag_off;
	int tcphoff;

	proto = oip6h->nexthdr;
	tcphoff = FUNC1(oldskb, ((u8 *)(oip6h + 1) - oldskb->data),
				   &proto, &frag_off);

	if ((tcphoff < 0) || (tcphoff > oldskb->len)) {
		FUNC3("Cannot get TCP header.\n");
		return NULL;
	}

	*otcplen = oldskb->len - tcphoff;

	/* IP header checks: fragment, too short. */
	if (proto != IPPROTO_TCP || *otcplen < sizeof(struct tcphdr)) {
		FUNC3("proto(%d) != IPPROTO_TCP or too short (len = %d)\n",
			 proto, *otcplen);
		return NULL;
	}

	otcph = FUNC4(oldskb, tcphoff, sizeof(struct tcphdr),
				   otcph);
	if (otcph == NULL)
		return NULL;

	/* No RST for RST. */
	if (otcph->rst) {
		FUNC3("RST is set\n");
		return NULL;
	}

	/* Check checksum. */
	if (FUNC2(oldskb, hook, tcphoff, IPPROTO_TCP)) {
		FUNC3("TCP checksum is invalid\n");
		return NULL;
	}

	return otcph;
}