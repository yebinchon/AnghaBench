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
struct xfrm_usersa_info {int dummy; } ;
struct xfrm_state {int dummy; } ;
struct xfrm_dump_info {int /*<<< orphan*/  nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; struct sk_buff* out_skb; struct sk_buff* in_skb; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  XFRM_MSG_NEWSA ; 
 int FUNC1 (struct xfrm_state*,struct xfrm_usersa_info*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 struct xfrm_usersa_info* FUNC3 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct xfrm_state *x, int count, void *ptr)
{
	struct xfrm_dump_info *sp = ptr;
	struct sk_buff *in_skb = sp->in_skb;
	struct sk_buff *skb = sp->out_skb;
	struct xfrm_usersa_info *p;
	struct nlmsghdr *nlh;
	int err;

	nlh = FUNC5(skb, FUNC0(in_skb).portid, sp->nlmsg_seq,
			XFRM_MSG_NEWSA, sizeof(*p), sp->nlmsg_flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	p = FUNC3(nlh);

	err = FUNC1(x, p, skb);
	if (err) {
		FUNC2(skb, nlh);
		return err;
	}
	FUNC4(skb, nlh);
	return 0;
}