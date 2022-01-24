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
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_options {scalar_t__ optlen; unsigned char* __data; int rr; int rr_needaddr; int ts; int ts_needaddr; int ts_needtime; int srr; unsigned char faddr; int cipso; int /*<<< orphan*/  is_strictroute; } ;
typedef  unsigned char __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IPOPT_END ; 
 unsigned char IPOPT_TS_PRESPEC ; 
 scalar_t__ RTN_UNICAST ; 
 scalar_t__ FUNC0 (struct net*,unsigned char) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_options*,int /*<<< orphan*/ ,int) ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 

int FUNC6(struct net *net, struct ip_options *dopt,
		      struct sk_buff *skb, const struct ip_options *sopt)
{
	unsigned char *sptr, *dptr;
	int soffset, doffset;
	int	optlen;

	FUNC4(dopt, 0, sizeof(struct ip_options));

	if (sopt->optlen == 0)
		return 0;

	sptr = FUNC5(skb);
	dptr = dopt->__data;

	if (sopt->rr) {
		optlen  = sptr[sopt->rr+1];
		soffset = sptr[sopt->rr+2];
		dopt->rr = dopt->optlen + sizeof(struct iphdr);
		FUNC3(dptr, sptr+sopt->rr, optlen);
		if (sopt->rr_needaddr && soffset <= optlen) {
			if (soffset + 3 > optlen)
				return -EINVAL;
			dptr[2] = soffset + 4;
			dopt->rr_needaddr = 1;
		}
		dptr += optlen;
		dopt->optlen += optlen;
	}
	if (sopt->ts) {
		optlen = sptr[sopt->ts+1];
		soffset = sptr[sopt->ts+2];
		dopt->ts = dopt->optlen + sizeof(struct iphdr);
		FUNC3(dptr, sptr+sopt->ts, optlen);
		if (soffset <= optlen) {
			if (sopt->ts_needaddr) {
				if (soffset + 3 > optlen)
					return -EINVAL;
				dopt->ts_needaddr = 1;
				soffset += 4;
			}
			if (sopt->ts_needtime) {
				if (soffset + 3 > optlen)
					return -EINVAL;
				if ((dptr[3]&0xF) != IPOPT_TS_PRESPEC) {
					dopt->ts_needtime = 1;
					soffset += 4;
				} else {
					dopt->ts_needtime = 0;

					if (soffset + 7 <= optlen) {
						__be32 addr;

						FUNC3(&addr, dptr+soffset-1, 4);
						if (FUNC0(net, addr) != RTN_UNICAST) {
							dopt->ts_needtime = 1;
							soffset += 8;
						}
					}
				}
			}
			dptr[2] = soffset;
		}
		dptr += optlen;
		dopt->optlen += optlen;
	}
	if (sopt->srr) {
		unsigned char *start = sptr+sopt->srr;
		__be32 faddr;

		optlen  = start[1];
		soffset = start[2];
		doffset = 0;
		if (soffset > optlen)
			soffset = optlen + 1;
		soffset -= 4;
		if (soffset > 3) {
			FUNC3(&faddr, &start[soffset-1], 4);
			for (soffset -= 4, doffset = 4; soffset > 3; soffset -= 4, doffset += 4)
				FUNC3(&dptr[doffset-1], &start[soffset-1], 4);
			/*
			 * RFC1812 requires to fix illegal source routes.
			 */
			if (FUNC2(&FUNC1(skb)->saddr,
				   &start[soffset + 3], 4) == 0)
				doffset -= 4;
		}
		if (doffset > 3) {
			dopt->faddr = faddr;
			dptr[0] = start[0];
			dptr[1] = doffset+3;
			dptr[2] = 4;
			dptr += doffset+3;
			dopt->srr = dopt->optlen + sizeof(struct iphdr);
			dopt->optlen += doffset+3;
			dopt->is_strictroute = sopt->is_strictroute;
		}
	}
	if (sopt->cipso) {
		optlen  = sptr[sopt->cipso+1];
		dopt->cipso = dopt->optlen+sizeof(struct iphdr);
		FUNC3(dptr, sptr+sopt->cipso, optlen);
		dptr += optlen;
		dopt->optlen += optlen;
	}
	while (dopt->optlen & 3) {
		*dptr++ = IPOPT_END;
		dopt->optlen++;
	}
	return 0;
}