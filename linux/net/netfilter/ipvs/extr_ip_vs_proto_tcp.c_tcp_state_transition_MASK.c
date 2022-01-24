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
struct tcphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ip_vs_proto_data {int dummy; } ;
struct ip_vs_conn {scalar_t__ af; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  _tcph ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int FUNC0 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_proto_data*,struct ip_vs_conn*,int,struct tcphdr*) ; 
 struct tcphdr* FUNC2 (struct sk_buff const*,int,int,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ip_vs_conn *cp, int direction,
		     const struct sk_buff *skb,
		     struct ip_vs_proto_data *pd)
{
	struct tcphdr _tcph, *th;

#ifdef CONFIG_IP_VS_IPV6
	int ihl = cp->af == AF_INET ? ip_hdrlen(skb) : sizeof(struct ipv6hdr);
#else
	int ihl = FUNC0(skb);
#endif

	th = FUNC2(skb, ihl, sizeof(_tcph), &_tcph);
	if (th == NULL)
		return;

	FUNC3(&cp->lock);
	FUNC1(pd, cp, direction, th);
	FUNC4(&cp->lock);
}