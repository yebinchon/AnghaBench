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
struct tcphdr {int doff; } ;
struct sk_buff {unsigned int len; char* data; } ;
struct nf_nat_sip_hooks {int /*<<< orphan*/  (* seq_adjust ) (struct sk_buff*,unsigned int,unsigned int) ;} ;
struct nf_conn {int status; } ;
typedef  unsigned int s16 ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  int /*<<< orphan*/  _tcph ;

/* Variables and functions */
 int HZ ; 
 int IPS_NAT_MASK ; 
 int IP_CT_ESTABLISHED ; 
 int IP_CT_ESTABLISHED_REPLY ; 
 int NF_ACCEPT ; 
 int NF_DROP ; 
 int /*<<< orphan*/  SIP_HDR_CONTENT_LENGTH ; 
 scalar_t__ FUNC0 (struct nf_conn*,char const*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  nf_nat_sip_hooks ; 
 int FUNC2 (struct sk_buff*,struct nf_conn*,unsigned int,unsigned int,char const**,unsigned int*) ; 
 struct nf_nat_sip_hooks* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (char const*,char**,int) ; 
 int sip_timeout ; 
 struct tcphdr* FUNC5 (struct sk_buff*,unsigned int,int,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 unsigned int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, unsigned int protoff,
			struct nf_conn *ct, enum ip_conntrack_info ctinfo)
{
	struct tcphdr *th, _tcph;
	unsigned int dataoff, datalen;
	unsigned int matchoff, matchlen, clen;
	unsigned int msglen, origlen;
	const char *dptr, *end;
	s16 diff, tdiff = 0;
	int ret = NF_ACCEPT;
	bool term;

	if (ctinfo != IP_CT_ESTABLISHED &&
	    ctinfo != IP_CT_ESTABLISHED_REPLY)
		return NF_ACCEPT;

	/* No Data ? */
	th = FUNC5(skb, protoff, sizeof(_tcph), &_tcph);
	if (th == NULL)
		return NF_ACCEPT;
	dataoff = protoff + th->doff * 4;
	if (dataoff >= skb->len)
		return NF_ACCEPT;

	FUNC1(ct, skb, sip_timeout * HZ);

	if (FUNC9(FUNC6(skb)))
		return NF_DROP;

	dptr = skb->data + dataoff;
	datalen = skb->len - dataoff;
	if (datalen < FUNC7("SIP/2.0 200"))
		return NF_ACCEPT;

	while (1) {
		if (FUNC0(ct, dptr, 0, datalen,
				      SIP_HDR_CONTENT_LENGTH,
				      &matchoff, &matchlen) <= 0)
			break;

		clen = FUNC4(dptr + matchoff, (char **)&end, 10);
		if (dptr + matchoff == end)
			break;

		term = false;
		for (; end + FUNC7("\r\n\r\n") <= dptr + datalen; end++) {
			if (end[0] == '\r' && end[1] == '\n' &&
			    end[2] == '\r' && end[3] == '\n') {
				term = true;
				break;
			}
		}
		if (!term)
			break;
		end += FUNC7("\r\n\r\n") + clen;

		msglen = origlen = end - dptr;
		if (msglen > datalen)
			return NF_ACCEPT;

		ret = FUNC2(skb, ct, protoff, dataoff,
				      &dptr, &msglen);
		/* process_sip_* functions report why this packet is dropped */
		if (ret != NF_ACCEPT)
			break;
		diff     = msglen - origlen;
		tdiff   += diff;

		dataoff += msglen;
		dptr    += msglen;
		datalen  = datalen + diff - msglen;
	}

	if (ret == NF_ACCEPT && ct->status & IPS_NAT_MASK) {
		const struct nf_nat_sip_hooks *hooks;

		hooks = FUNC3(nf_nat_sip_hooks);
		if (hooks)
			hooks->seq_adjust(skb, protoff, tdiff);
	}

	return ret;
}