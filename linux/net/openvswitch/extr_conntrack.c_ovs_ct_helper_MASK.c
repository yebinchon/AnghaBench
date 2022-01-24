#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_helper {int (* help ) (struct sk_buff*,unsigned int,struct nf_conn*,int) ;} ;
struct nf_conn_help {int /*<<< orphan*/  helper; } ;
struct nf_conn {int /*<<< orphan*/  status; } ;
struct ipv6hdr {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  int __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  nexthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_SEQ_ADJUST_BIT ; 
 int IP_CT_RELATED_REPLY ; 
#define  NFPROTO_IPV4 129 
#define  NFPROTO_IPV6 128 
 int NF_ACCEPT ; 
 int NF_DROP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int) ; 
 unsigned int FUNC2 (struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,int,int /*<<< orphan*/ *,int*) ; 
 struct nf_conn* FUNC5 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nf_conn*,int,unsigned int) ; 
 struct nf_conn_help* FUNC7 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct nf_conntrack_helper* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*,unsigned int,struct nf_conn*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, u16 proto)
{
	const struct nf_conntrack_helper *helper;
	const struct nf_conn_help *help;
	enum ip_conntrack_info ctinfo;
	unsigned int protoff;
	struct nf_conn *ct;
	int err;

	ct = FUNC5(skb, &ctinfo);
	if (!ct || ctinfo == IP_CT_RELATED_REPLY)
		return NF_ACCEPT;

	help = FUNC7(ct);
	if (!help)
		return NF_ACCEPT;

	helper = FUNC9(help->helper);
	if (!helper)
		return NF_ACCEPT;

	switch (proto) {
	case NFPROTO_IPV4:
		protoff = FUNC2(skb);
		break;
	case NFPROTO_IPV6: {
		u8 nexthdr = FUNC3(skb)->nexthdr;
		__be16 frag_off;
		int ofs;

		ofs = FUNC4(skb, sizeof(struct ipv6hdr), &nexthdr,
				       &frag_off);
		if (ofs < 0 || (frag_off & FUNC1(~0x7)) != 0) {
			FUNC8("proto header not found\n");
			return NF_ACCEPT;
		}
		protoff = ofs;
		break;
	}
	default:
		FUNC0(1, "helper invoked on non-IP family!");
		return NF_DROP;
	}

	err = helper->help(skb, protoff, ct, ctinfo);
	if (err != NF_ACCEPT)
		return err;

	/* Adjust seqs after helper.  This is needed due to some helpers (e.g.,
	 * FTP with NAT) adusting the TCP payload size when mangling IP
	 * addresses and/or port numbers in the text-based control connection.
	 */
	if (FUNC11(IPS_SEQ_ADJUST_BIT, &ct->status) &&
	    !FUNC6(skb, ct, ctinfo, protoff))
		return NF_DROP;
	return NF_ACCEPT;
}