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
struct xt_tcpoptstrip_target_info {int /*<<< orphan*/  strip_bmap; } ;
struct xt_action_param {scalar_t__ fragoff; struct xt_tcpoptstrip_target_info* targinfo; } ;
struct tcphdr {int doff; int /*<<< orphan*/  check; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  _th ;

/* Variables and functions */
 unsigned int NF_DROP ; 
 int TCPOPT_NOP ; 
 unsigned int XT_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,unsigned int) ; 
 unsigned int FUNC3 (int*,unsigned int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,unsigned int) ; 
 struct tcphdr* FUNC5 (struct sk_buff*,unsigned int,int,struct tcphdr*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int
FUNC8(struct sk_buff *skb,
			  const struct xt_action_param *par,
			  unsigned int tcphoff)
{
	const struct xt_tcpoptstrip_target_info *info = par->targinfo;
	struct tcphdr *tcph, _th;
	unsigned int optl, i, j;
	u_int16_t n, o;
	u_int8_t *opt;
	int tcp_hdrlen;

	/* This is a fragment, no TCP header is available */
	if (par->fragoff != 0)
		return XT_CONTINUE;

	tcph = FUNC5(skb, tcphoff, sizeof(_th), &_th);
	if (!tcph)
		return NF_DROP;

	tcp_hdrlen = tcph->doff * 4;
	if (tcp_hdrlen < sizeof(struct tcphdr))
		return NF_DROP;

	if (FUNC4(skb, tcphoff + tcp_hdrlen))
		return NF_DROP;

	/* must reload tcph, might have been moved */
	tcph = (struct tcphdr *)(FUNC6(skb) + tcphoff);
	opt  = (u8 *)tcph;

	/*
	 * Walk through all TCP options - if we find some option to remove,
	 * set all octets to %TCPOPT_NOP and adjust checksum.
	 */
	for (i = sizeof(struct tcphdr); i < tcp_hdrlen - 1; i += optl) {
		optl = FUNC3(opt, i);

		if (i + optl > tcp_hdrlen)
			break;

		if (!FUNC7(info->strip_bmap, opt[i]))
			continue;

		for (j = 0; j < optl; ++j) {
			o = opt[i+j];
			n = TCPOPT_NOP;
			if ((i + j) % 2 == 0) {
				o <<= 8;
				n <<= 8;
			}
			FUNC1(&tcph->check, skb, FUNC0(o),
						 FUNC0(n), false);
		}
		FUNC2(opt + i, TCPOPT_NOP, optl);
	}

	return XT_CONTINUE;
}