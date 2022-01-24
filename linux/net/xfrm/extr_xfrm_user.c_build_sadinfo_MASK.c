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
typedef  int /*<<< orphan*/  u32 ;
struct xfrmu_sadhinfo {int /*<<< orphan*/  sadhcnt; int /*<<< orphan*/  sadhmcnt; } ;
struct xfrmk_sadinfo {int /*<<< orphan*/  sadcnt; int /*<<< orphan*/  sadhcnt; int /*<<< orphan*/  sadhmcnt; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  sh ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  XFRMA_SAD_CNT ; 
 int /*<<< orphan*/  XFRMA_SAD_HINFO ; 
 int /*<<< orphan*/  XFRM_MSG_NEWSADINFO ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct xfrmu_sadhinfo*) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/ * FUNC3 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,struct xfrmk_sadinfo*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct net *net,
			 u32 portid, u32 seq, u32 flags)
{
	struct xfrmk_sadinfo si;
	struct xfrmu_sadhinfo sh;
	struct nlmsghdr *nlh;
	int err;
	u32 *f;

	nlh = FUNC5(skb, portid, seq, XFRM_MSG_NEWSADINFO, sizeof(u32), 0);
	if (nlh == NULL) /* shouldn't really happen ... */
		return -EMSGSIZE;

	f = FUNC3(nlh);
	*f = flags;
	FUNC6(net, &si);

	sh.sadhmcnt = si.sadhmcnt;
	sh.sadhcnt = si.sadhcnt;

	err = FUNC1(skb, XFRMA_SAD_CNT, si.sadcnt);
	if (!err)
		err = FUNC0(skb, XFRMA_SAD_HINFO, sizeof(sh), &sh);
	if (err) {
		FUNC2(skb, nlh);
		return err;
	}

	FUNC4(skb, nlh);
	return 0;
}