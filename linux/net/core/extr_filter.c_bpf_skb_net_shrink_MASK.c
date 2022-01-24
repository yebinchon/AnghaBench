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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct skb_shared_info {int gso_type; scalar_t__ gso_segs; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int BPF_F_ADJ_ROOM_FIXED_GSO ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int SKB_GSO_DODGY ; 
 int SKB_GSO_UDP_L4 ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skb_shared_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct skb_shared_info* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, u32 off, u32 len_diff,
			      u64 flags)
{
	int ret;

	if (flags & ~BPF_F_ADJ_ROOM_FIXED_GSO)
		return -EINVAL;

	if (FUNC2(skb) && !FUNC3(skb)) {
		/* udp gso_size delineates datagrams, only allow if fixed */
		if (!(FUNC4(skb)->gso_type & SKB_GSO_UDP_L4) ||
		    !(flags & BPF_F_ADJ_ROOM_FIXED_GSO))
			return -ENOTSUPP;
	}

	ret = FUNC5(skb, GFP_ATOMIC);
	if (FUNC6(ret < 0))
		return ret;

	ret = FUNC0(skb, off, len_diff);
	if (FUNC6(ret < 0))
		return ret;

	if (FUNC2(skb)) {
		struct skb_shared_info *shinfo = FUNC4(skb);

		/* Due to header shrink, MSS can be upgraded. */
		if (!(flags & BPF_F_ADJ_ROOM_FIXED_GSO))
			FUNC1(shinfo, len_diff);

		/* Header must be checked, and gso_segs recomputed. */
		shinfo->gso_type |= SKB_GSO_DODGY;
		shinfo->gso_segs = 0;
	}

	return 0;
}