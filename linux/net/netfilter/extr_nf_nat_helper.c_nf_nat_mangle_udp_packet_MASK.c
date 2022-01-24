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
struct udphdr {int /*<<< orphan*/  check; int /*<<< orphan*/  len; } ;
struct sk_buff {unsigned int len; scalar_t__ ip_summed; scalar_t__ data; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int,unsigned int,unsigned int,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udphdr*,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC6 (struct sk_buff*) ; 

bool
FUNC7(struct sk_buff *skb,
			 struct nf_conn *ct,
			 enum ip_conntrack_info ctinfo,
			 unsigned int protoff,
			 unsigned int match_offset,
			 unsigned int match_len,
			 const char *rep_buffer,
			 unsigned int rep_len)
{
	struct udphdr *udph;
	int datalen, oldlen;

	if (FUNC5(skb, skb->len))
		return false;

	if (rep_len > match_len &&
	    rep_len - match_len > FUNC6(skb) &&
	    !FUNC0(skb, rep_len - match_len))
		return false;

	udph = (void *)skb->data + protoff;

	oldlen = skb->len - protoff;
	FUNC2(skb, protoff + sizeof(*udph),
			match_offset, match_len, rep_buffer, rep_len);

	/* update the length of the UDP packet */
	datalen = skb->len - protoff;
	udph->len = FUNC1(datalen);

	/* fix udp checksum if udp checksum was previously calculated */
	if (!udph->check && skb->ip_summed != CHECKSUM_PARTIAL)
		return true;

	FUNC4(skb, FUNC3(ct), IPPROTO_UDP,
			   udph, &udph->check, datalen, oldlen);

	return true;
}