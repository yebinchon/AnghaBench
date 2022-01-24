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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMFWDHDRERROR ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFRM_LOOKUP_QUEUE ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct dst_entry*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,struct flowi*,unsigned short) ; 
 struct dst_entry* FUNC7 (struct net*,int /*<<< orphan*/ ,struct flowi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(struct sk_buff *skb, unsigned short family)
{
	struct net *net = FUNC2(skb->dev);
	struct flowi fl;
	struct dst_entry *dst;
	int res = 1;

	if (FUNC6(skb, &fl, family) < 0) {
		FUNC1(net, LINUX_MIB_XFRMFWDHDRERROR);
		return 0;
	}

	FUNC4(skb);
	if (!FUNC3(skb)) {
		FUNC1(net, LINUX_MIB_XFRMFWDHDRERROR);
		return 0;
	}

	dst = FUNC7(net, FUNC3(skb), &fl, NULL, XFRM_LOOKUP_QUEUE);
	if (FUNC0(dst)) {
		res = 0;
		dst = NULL;
	}
	FUNC5(skb, dst);
	return res;
}