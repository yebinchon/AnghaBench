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
struct ipt_ECN_info {int ip_ect; } ;
struct iphdr {int tos; int /*<<< orphan*/  check; } ;
typedef  int __u8 ;

/* Variables and functions */
 int IPT_ECN_IP_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static inline bool
FUNC4(struct sk_buff *skb, const struct ipt_ECN_info *einfo)
{
	struct iphdr *iph = FUNC2(skb);

	if ((iph->tos & IPT_ECN_IP_MASK) != (einfo->ip_ect & IPT_ECN_IP_MASK)) {
		__u8 oldtos;
		if (FUNC3(skb, sizeof(struct iphdr)))
			return false;
		iph = FUNC2(skb);
		oldtos = iph->tos;
		iph->tos &= ~IPT_ECN_IP_MASK;
		iph->tos |= (einfo->ip_ect & IPT_ECN_IP_MASK);
		FUNC0(&iph->check, FUNC1(oldtos), FUNC1(iph->tos));
	}
	return true;
}