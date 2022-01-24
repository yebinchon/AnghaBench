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
struct iphdr {int dummy; } ;
struct ip_options {int optlen; scalar_t__ ts_needtime; scalar_t__ ts_needaddr; scalar_t__ rr_needaddr; scalar_t__ rr; scalar_t__ ts; } ;
struct TYPE_2__ {struct ip_options opt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
#define  IPOPT_END 129 
#define  IPOPT_NOOP 128 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int const,int) ; 
 unsigned char* FUNC3 (struct sk_buff*) ; 

void FUNC4(struct sk_buff *skb)
{
	unsigned char *optptr = FUNC3(skb) + sizeof(struct iphdr);
	struct ip_options *opt = &(FUNC0(skb)->opt);
	int  l = opt->optlen;
	int  optlen;

	while (l > 0) {
		switch (*optptr) {
		case IPOPT_END:
			return;
		case IPOPT_NOOP:
			l--;
			optptr++;
			continue;
		}
		optlen = optptr[1];
		if (optlen < 2 || optlen > l)
		  return;
		if (!FUNC1(*optptr))
			FUNC2(optptr, IPOPT_NOOP, optlen);
		l -= optlen;
		optptr += optlen;
	}
	opt->ts = 0;
	opt->rr = 0;
	opt->rr_needaddr = 0;
	opt->ts_needaddr = 0;
	opt->ts_needtime = 0;
}