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
typedef  int u_int8_t ;
typedef  int u_int16_t ;
typedef  int u8 ;
typedef  int u16 ;
struct xt_tcpmss_info {scalar_t__ mss; } ;
struct xt_action_param {scalar_t__ fragoff; struct xt_tcpmss_info* targinfo; } ;
struct tcphdr {int doff; int /*<<< orphan*/  check; } ;
struct sk_buff {unsigned int len; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ NFPROTO_IPV4 ; 
 int TCPOLEN_MSS ; 
 int TCPOPT_MSS ; 
 scalar_t__ XT_TCPMSS_CLAMP_PMTU ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 void* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 
 scalar_t__ FUNC7 (int*,unsigned int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int FUNC13 (struct sk_buff*) ; 
 unsigned int FUNC14 (struct net*,struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC15 (struct xt_action_param const*) ; 
 struct net* FUNC16 (struct xt_action_param const*) ; 

__attribute__((used)) static int
FUNC17(struct sk_buff *skb,
		     const struct xt_action_param *par,
		     unsigned int family,
		     unsigned int tcphoff,
		     unsigned int minlen)
{
	const struct xt_tcpmss_info *info = par->targinfo;
	struct tcphdr *tcph;
	int len, tcp_hdrlen;
	unsigned int i;
	__be16 oldval;
	u16 newmss;
	u8 *opt;

	/* This is a fragment, no TCP header is available */
	if (par->fragoff != 0)
		return 0;

	if (FUNC10(skb, skb->len))
		return -1;

	len = skb->len - tcphoff;
	if (len < (int)sizeof(struct tcphdr))
		return -1;

	tcph = (struct tcphdr *)(FUNC11(skb) + tcphoff);
	tcp_hdrlen = tcph->doff * 4;

	if (len < tcp_hdrlen || tcp_hdrlen < sizeof(struct tcphdr))
		return -1;

	if (info->mss == XT_TCPMSS_CLAMP_PMTU) {
		struct net *net = FUNC16(par);
		unsigned int in_mtu = FUNC14(net, skb, family);
		unsigned int min_mtu = FUNC5(FUNC0(FUNC9(skb)), in_mtu);

		if (min_mtu <= minlen) {
			FUNC6("unknown or invalid path-MTU (%u)\n",
					    min_mtu);
			return -1;
		}
		newmss = min_mtu - minlen;
	} else
		newmss = info->mss;

	opt = (u_int8_t *)tcph;
	for (i = sizeof(struct tcphdr); i <= tcp_hdrlen - TCPOLEN_MSS; i += FUNC7(opt, i)) {
		if (opt[i] == TCPOPT_MSS && opt[i+1] == TCPOLEN_MSS) {
			u_int16_t oldmss;

			oldmss = (opt[i+2] << 8) | opt[i+3];

			/* Never increase MSS, even when setting it, as
			 * doing so results in problems for hosts that rely
			 * on MSS being set correctly.
			 */
			if (oldmss <= newmss)
				return 0;

			opt[i+2] = (newmss & 0xff00) >> 8;
			opt[i+3] = newmss & 0x00ff;

			FUNC2(&tcph->check, skb,
						 FUNC1(oldmss), FUNC1(newmss),
						 false);
			return 0;
		}
	}

	/* There is data after the header so the option can't be added
	 * without moving it, and doing so may make the SYN packet
	 * itself too large. Accept the packet unmodified instead.
	 */
	if (len > tcp_hdrlen)
		return 0;

	/* tcph->doff has 4 bits, do not wrap it to 0 */
	if (tcp_hdrlen >= 15 * 4)
		return 0;

	/*
	 * MSS Option not found ?! add it..
	 */
	if (FUNC13(skb) < TCPOLEN_MSS) {
		if (FUNC8(skb, 0,
				     TCPOLEN_MSS - FUNC13(skb),
				     GFP_ATOMIC))
			return -1;
		tcph = (struct tcphdr *)(FUNC11(skb) + tcphoff);
	}

	FUNC12(skb, TCPOLEN_MSS);

	/*
	 * IPv4: RFC 1122 states "If an MSS option is not received at
	 * connection setup, TCP MUST assume a default send MSS of 536".
	 * IPv6: RFC 2460 states IPv6 has a minimum MTU of 1280 and a minimum
	 * length IPv6 header of 60, ergo the default MSS value is 1220
	 * Since no MSS was provided, we must use the default values
	 */
	if (FUNC15(par) == NFPROTO_IPV4)
		newmss = FUNC5(newmss, (u16)536);
	else
		newmss = FUNC5(newmss, (u16)1220);

	opt = (u_int8_t *)tcph + sizeof(struct tcphdr);
	FUNC4(opt + TCPOLEN_MSS, opt, len - sizeof(struct tcphdr));

	FUNC2(&tcph->check, skb,
				 FUNC1(len), FUNC1(len + TCPOLEN_MSS), true);
	opt[0] = TCPOPT_MSS;
	opt[1] = TCPOLEN_MSS;
	opt[2] = (newmss & 0xff00) >> 8;
	opt[3] = newmss & 0x00ff;

	FUNC3(&tcph->check, skb, 0, *((__be32 *)opt), false);

	oldval = ((__be16 *)tcph)[6];
	tcph->doff += TCPOLEN_MSS/4;
	FUNC2(&tcph->check, skb,
				 oldval, ((__be16 *)tcph)[6], false);
	return TCPOLEN_MSS;
}