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
struct netns_ipvs {int dummy; } ;
struct ip_vs_iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; } ;
struct ip_vs_conn_param {int dummy; } ;
struct ip_vs_conn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netns_ipvs*,int,struct ip_vs_iphdr const*,struct ip_vs_conn_param*) ; 
 struct ip_vs_conn* FUNC3 (struct ip_vs_conn_param*) ; 
 scalar_t__ FUNC4 (struct ip_vs_iphdr const*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ip_vs_conn *
FUNC6(struct netns_ipvs *ipvs, int af, const struct sk_buff *skb,
		   const struct ip_vs_iphdr *iph)
{
	struct ip_vs_conn *cp;
	struct ip_vs_conn_param p;

	FUNC2(ipvs, af, iph, &p);
	cp = FUNC3(&p);
	if (!cp) {
		/*
		 * We are not sure if the packet is from our
		 * service, so our conn_schedule hook should return NF_ACCEPT
		 */
		FUNC1(12, "Unknown ISAKMP entry for outin packet "
			      "%s%s %s->%s\n",
			      FUNC4(iph) ? "ICMP+" : "",
			      FUNC5(iph->protocol)->name,
			      FUNC0(af, &iph->saddr),
			      FUNC0(af, &iph->daddr));
	}

	return cp;
}