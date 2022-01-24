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
struct sk_buff {int dummy; } ;
struct netns_ipvs {int dummy; } ;
struct ip_vs_iphdr {int dummy; } ;
struct ip_vs_conn_param {int dummy; } ;
struct ip_vs_conn {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct netns_ipvs*,int,struct sk_buff const*,struct ip_vs_iphdr const*,struct ip_vs_conn_param*) ; 
 struct ip_vs_conn* FUNC1 (struct ip_vs_conn_param*) ; 

struct ip_vs_conn *
FUNC2(struct netns_ipvs *ipvs, int af,
			 const struct sk_buff *skb,
			 const struct ip_vs_iphdr *iph)
{
	struct ip_vs_conn_param p;

	if (FUNC0(ipvs, af, skb, iph, &p))
		return NULL;

	return FUNC1(&p);
}