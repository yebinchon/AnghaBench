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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {struct xfrm_state* xfrm; } ;
struct common_audit_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOCIATION__SENDTO ; 
#define  IPPROTO_AH 130 
#define  IPPROTO_COMP 129 
#define  IPPROTO_ESP 128 
 int /*<<< orphan*/  SECCLASS_ASSOCIATION ; 
 int /*<<< orphan*/  SECINITSID_UNLABELED ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 scalar_t__ FUNC1 (struct xfrm_state*) ; 
 int /*<<< orphan*/  selinux_state ; 
 struct dst_entry* FUNC2 (struct sk_buff*) ; 
 struct dst_entry* FUNC3 (struct dst_entry*) ; 

int FUNC4(u32 sk_sid, struct sk_buff *skb,
				struct common_audit_data *ad, u8 proto)
{
	struct dst_entry *dst;

	switch (proto) {
	case IPPROTO_AH:
	case IPPROTO_ESP:
	case IPPROTO_COMP:
		/* We should have already seen this packet once before it
		 * underwent xfrm(s). No need to subject it to the unlabeled
		 * check. */
		return 0;
	default:
		break;
	}

	dst = FUNC2(skb);
	if (dst) {
		struct dst_entry *iter;

		for (iter = dst; iter != NULL; iter = FUNC3(iter)) {
			struct xfrm_state *x = iter->xfrm;

			if (x && FUNC1(x))
				return 0;
		}
	}

	/* This check even when there's no association involved is intended,
	 * according to Trent Jaeger, to make sure a process can't engage in
	 * non-IPsec communication unless explicitly allowed by policy. */
	return FUNC0(&selinux_state, sk_sid, SECINITSID_UNLABELED,
			    SECCLASS_ASSOCIATION, ASSOCIATION__SENDTO, ad);
}