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
struct sk_buff {int ipvs_property; } ;
struct ip_vs_conn {int flags; } ;

/* Variables and functions */
 int IP_VS_CONN_F_NFCT ; 
 int NF_ACCEPT ; 
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline int FUNC4(struct sk_buff *skb,
					    struct ip_vs_conn *cp)
{
	int ret = NF_ACCEPT;

	skb->ipvs_property = 1;
	if (FUNC3(cp->flags & IP_VS_CONN_F_NFCT))
		ret = FUNC0(skb);
	if (ret == NF_ACCEPT) {
		FUNC1(skb);
		FUNC2(skb);
	}
	return ret;
}