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
struct xt_action_param {struct ipt_TTL_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct ipt_TTL_info {int mode; int ttl; } ;
struct iphdr {int ttl; int /*<<< orphan*/  check; } ;

/* Variables and functions */
#define  IPT_TTL_DEC 130 
#define  IPT_TTL_INC 129 
#define  IPT_TTL_SET 128 
 unsigned int NF_DROP ; 
 unsigned int XT_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static unsigned int
FUNC4(struct sk_buff *skb, const struct xt_action_param *par)
{
	struct iphdr *iph;
	const struct ipt_TTL_info *info = par->targinfo;
	int new_ttl;

	if (FUNC3(skb, sizeof(*iph)))
		return NF_DROP;

	iph = FUNC2(skb);

	switch (info->mode) {
	case IPT_TTL_SET:
		new_ttl = info->ttl;
		break;
	case IPT_TTL_INC:
		new_ttl = iph->ttl + info->ttl;
		if (new_ttl > 255)
			new_ttl = 255;
		break;
	case IPT_TTL_DEC:
		new_ttl = iph->ttl - info->ttl;
		if (new_ttl < 0)
			new_ttl = 0;
		break;
	default:
		new_ttl = iph->ttl;
		break;
	}

	if (new_ttl != iph->ttl) {
		FUNC0(&iph->check, FUNC1(iph->ttl << 8),
					   FUNC1(new_ttl << 8));
		iph->ttl = new_ttl;
	}

	return XT_CONTINUE;
}