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
struct mld_msg {int mld_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMSG ; 
#define  ICMPV6_MGM_QUERY 131 
#define  ICMPV6_MGM_REDUCTION 130 
#define  ICMPV6_MGM_REPORT 129 
#define  ICMPV6_MLD2_REPORT 128 
 int FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb)
{
	unsigned int len = FUNC4(skb) + sizeof(struct mld_msg);
	struct mld_msg *mld;

	if (!FUNC2(skb, len))
		return -EINVAL;

	mld = (struct mld_msg *)FUNC3(skb);

	switch (mld->mld_type) {
	case ICMPV6_MGM_REDUCTION:
	case ICMPV6_MGM_REPORT:
		return 0;
	case ICMPV6_MLD2_REPORT:
		return FUNC1(skb);
	case ICMPV6_MGM_QUERY:
		return FUNC0(skb);
	default:
		return -ENOMSG;
	}
}