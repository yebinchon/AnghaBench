#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct xfrmu_spdinfo {int /*<<< orphan*/  rbits; int /*<<< orphan*/  lbits; int /*<<< orphan*/  spdhmcnt; int /*<<< orphan*/  spdhcnt; int /*<<< orphan*/  fwdscnt; int /*<<< orphan*/  outscnt; int /*<<< orphan*/  inscnt; int /*<<< orphan*/  fwdcnt; int /*<<< orphan*/  outcnt; int /*<<< orphan*/  incnt; } ;
struct xfrmu_spdhthresh {int /*<<< orphan*/  rbits; int /*<<< orphan*/  lbits; int /*<<< orphan*/  spdhmcnt; int /*<<< orphan*/  spdhcnt; int /*<<< orphan*/  fwdscnt; int /*<<< orphan*/  outscnt; int /*<<< orphan*/  inscnt; int /*<<< orphan*/  fwdcnt; int /*<<< orphan*/  outcnt; int /*<<< orphan*/  incnt; } ;
struct xfrmu_spdhinfo {int /*<<< orphan*/  rbits; int /*<<< orphan*/  lbits; int /*<<< orphan*/  spdhmcnt; int /*<<< orphan*/  spdhcnt; int /*<<< orphan*/  fwdscnt; int /*<<< orphan*/  outscnt; int /*<<< orphan*/  inscnt; int /*<<< orphan*/  fwdcnt; int /*<<< orphan*/  outcnt; int /*<<< orphan*/  incnt; } ;
struct xfrmk_spdinfo {int /*<<< orphan*/  spdhmcnt; int /*<<< orphan*/  spdhcnt; int /*<<< orphan*/  fwdscnt; int /*<<< orphan*/  outscnt; int /*<<< orphan*/  inscnt; int /*<<< orphan*/  fwdcnt; int /*<<< orphan*/  outcnt; int /*<<< orphan*/  incnt; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rbits6; int /*<<< orphan*/  lbits6; int /*<<< orphan*/  rbits4; int /*<<< orphan*/  lbits4; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__ policy_hthresh; } ;
struct net {TYPE_2__ xfrm; } ;
typedef  int /*<<< orphan*/  spt6 ;
typedef  int /*<<< orphan*/  spt4 ;
typedef  int /*<<< orphan*/  sph ;
typedef  int /*<<< orphan*/  spc ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  XFRMA_SPD_HINFO ; 
 int /*<<< orphan*/  XFRMA_SPD_INFO ; 
 int /*<<< orphan*/  XFRMA_SPD_IPV4_HTHRESH ; 
 int /*<<< orphan*/  XFRMA_SPD_IPV6_HTHRESH ; 
 int /*<<< orphan*/  XFRM_MSG_NEWSPDINFO ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct xfrmu_spdinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/ * FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,struct xfrmk_spdinfo*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct net *net,
			 u32 portid, u32 seq, u32 flags)
{
	struct xfrmk_spdinfo si;
	struct xfrmu_spdinfo spc;
	struct xfrmu_spdhinfo sph;
	struct xfrmu_spdhthresh spt4, spt6;
	struct nlmsghdr *nlh;
	int err;
	u32 *f;
	unsigned lseq;

	nlh = FUNC4(skb, portid, seq, XFRM_MSG_NEWSPDINFO, sizeof(u32), 0);
	if (nlh == NULL) /* shouldn't really happen ... */
		return -EMSGSIZE;

	f = FUNC2(nlh);
	*f = flags;
	FUNC7(net, &si);
	spc.incnt = si.incnt;
	spc.outcnt = si.outcnt;
	spc.fwdcnt = si.fwdcnt;
	spc.inscnt = si.inscnt;
	spc.outscnt = si.outscnt;
	spc.fwdscnt = si.fwdscnt;
	sph.spdhcnt = si.spdhcnt;
	sph.spdhmcnt = si.spdhmcnt;

	do {
		lseq = FUNC5(&net->xfrm.policy_hthresh.lock);

		spt4.lbits = net->xfrm.policy_hthresh.lbits4;
		spt4.rbits = net->xfrm.policy_hthresh.rbits4;
		spt6.lbits = net->xfrm.policy_hthresh.lbits6;
		spt6.rbits = net->xfrm.policy_hthresh.rbits6;
	} while (FUNC6(&net->xfrm.policy_hthresh.lock, lseq));

	err = FUNC0(skb, XFRMA_SPD_INFO, sizeof(spc), &spc);
	if (!err)
		err = FUNC0(skb, XFRMA_SPD_HINFO, sizeof(sph), &sph);
	if (!err)
		err = FUNC0(skb, XFRMA_SPD_IPV4_HTHRESH, sizeof(spt4), &spt4);
	if (!err)
		err = FUNC0(skb, XFRMA_SPD_IPV6_HTHRESH, sizeof(spt6), &spt6);
	if (err) {
		FUNC1(skb, nlh);
		return err;
	}

	FUNC3(skb, nlh);
	return 0;
}