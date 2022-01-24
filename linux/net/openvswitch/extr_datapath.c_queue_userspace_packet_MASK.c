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
typedef  scalar_t__ uint32_t ;
struct sw_flow_key {int dummy; } ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; scalar_t__ data; } ;
struct ovs_header {int dp_ifindex; } ;
struct nlmsghdr {unsigned int nlmsg_len; } ;
struct nlattr {scalar_t__ nla_len; } ;
struct dp_upcall_info {int /*<<< orphan*/  portid; scalar_t__ mru; scalar_t__ actions_len; int /*<<< orphan*/  actions; int /*<<< orphan*/  egress_tun_info; scalar_t__ userdata; int /*<<< orphan*/  cmd; } ;
struct datapath {int user_features; } ;
struct TYPE_2__ {int /*<<< orphan*/  acts_origlen; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int EFBIG ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int OVS_DP_F_UNALIGNED ; 
 int /*<<< orphan*/  OVS_PACKET_ATTR_ACTIONS ; 
 int /*<<< orphan*/  OVS_PACKET_ATTR_EGRESS_TUN_KEY ; 
 int /*<<< orphan*/  OVS_PACKET_ATTR_KEY ; 
 int /*<<< orphan*/  OVS_PACKET_ATTR_LEN ; 
 int /*<<< orphan*/  OVS_PACKET_ATTR_MRU ; 
 int /*<<< orphan*/  OVS_PACKET_ATTR_PACKET ; 
 int /*<<< orphan*/  OVS_PACKET_ATTR_USERDATA ; 
 scalar_t__ USHRT_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  dp_packet_genl_family ; 
 struct sk_buff* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 struct ovs_header* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct datapath*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 struct nlattr* FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct datapath*) ; 
 int FUNC18 (int /*<<< orphan*/ ,scalar_t__,struct sk_buff*) ; 
 int FUNC19 (struct sw_flow_key const*,struct sw_flow_key const*,int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int FUNC20 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct datapath*,struct sk_buff*) ; 
 struct sk_buff* FUNC22 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 scalar_t__ FUNC25 (struct sk_buff*) ; 
 int FUNC26 (struct sk_buff*,struct sk_buff*,scalar_t__,unsigned int) ; 
 unsigned int FUNC27 (struct sk_buff*) ; 
 size_t FUNC28 (struct dp_upcall_info const*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC29(struct datapath *dp, struct sk_buff *skb,
				  const struct sw_flow_key *key,
				  const struct dp_upcall_info *upcall_info,
				  uint32_t cutlen)
{
	struct ovs_header *upcall;
	struct sk_buff *nskb = NULL;
	struct sk_buff *user_skb = NULL; /* to be queued to userspace */
	struct nlattr *nla;
	size_t len;
	unsigned int hlen;
	int err, dp_ifindex;

	dp_ifindex = FUNC6(dp);
	if (!dp_ifindex)
		return -ENODEV;

	if (FUNC25(skb)) {
		nskb = FUNC22(skb, GFP_ATOMIC);
		if (!nskb)
			return -ENOMEM;

		nskb = FUNC2(nskb);
		if (!nskb)
			return -ENOMEM;

		skb = nskb;
	}

	if (FUNC8(skb->len) > USHRT_MAX) {
		err = -EFBIG;
		goto out;
	}

	/* Complete checksum if needed */
	if (skb->ip_summed == CHECKSUM_PARTIAL &&
	    (err = FUNC23(skb, 0)))
		goto out;

	/* Older versions of OVS user space enforce alignment of the last
	 * Netlink attribute to NLA_ALIGNTO which would require extensive
	 * padding logic. Only perform zerocopy if padding is not required.
	 */
	if (dp->user_features & OVS_DP_F_UNALIGNED)
		hlen = FUNC27(skb);
	else
		hlen = skb->len;

	len = FUNC28(upcall_info, hlen - cutlen,
			      FUNC0(skb)->acts_origlen);
	user_skb = FUNC3(len, GFP_ATOMIC);
	if (!user_skb) {
		err = -ENOMEM;
		goto out;
	}

	upcall = FUNC4(user_skb, 0, 0, &dp_packet_genl_family,
			     0, upcall_info->cmd);
	if (!upcall) {
		err = -EINVAL;
		goto out;
	}
	upcall->dp_ifindex = dp_ifindex;

	err = FUNC19(key, key, OVS_PACKET_ATTR_KEY, false, user_skb);
	if (err)
		goto out;

	if (upcall_info->userdata)
		FUNC1(user_skb, OVS_PACKET_ATTR_USERDATA,
			  FUNC10(upcall_info->userdata),
			  FUNC9(upcall_info->userdata));

	if (upcall_info->egress_tun_info) {
		nla = FUNC13(user_skb,
					    OVS_PACKET_ATTR_EGRESS_TUN_KEY);
		if (!nla) {
			err = -EMSGSIZE;
			goto out;
		}
		err = FUNC20(user_skb,
					      upcall_info->egress_tun_info);
		if (err)
			goto out;

		FUNC12(user_skb, nla);
	}

	if (upcall_info->actions_len) {
		nla = FUNC13(user_skb, OVS_PACKET_ATTR_ACTIONS);
		if (!nla) {
			err = -EMSGSIZE;
			goto out;
		}
		err = FUNC18(upcall_info->actions,
					  upcall_info->actions_len,
					  user_skb);
		if (!err)
			FUNC12(user_skb, nla);
		else
			FUNC11(user_skb, nla);
	}

	/* Add OVS_PACKET_ATTR_MRU */
	if (upcall_info->mru) {
		if (FUNC14(user_skb, OVS_PACKET_ATTR_MRU,
				upcall_info->mru)) {
			err = -ENOBUFS;
			goto out;
		}
		FUNC21(dp, user_skb);
	}

	/* Add OVS_PACKET_ATTR_LEN when packet is truncated */
	if (cutlen > 0) {
		if (FUNC15(user_skb, OVS_PACKET_ATTR_LEN,
				skb->len)) {
			err = -ENOBUFS;
			goto out;
		}
		FUNC21(dp, user_skb);
	}

	/* Only reserve room for attribute header, packet data is added
	 * in skb_zerocopy() */
	if (!(nla = FUNC16(user_skb, OVS_PACKET_ATTR_PACKET, 0))) {
		err = -ENOBUFS;
		goto out;
	}
	nla->nla_len = FUNC8(skb->len - cutlen);

	err = FUNC26(user_skb, skb, skb->len - cutlen, hlen);
	if (err)
		goto out;

	/* Pad OVS_PACKET_ATTR_PACKET if linear copy was performed */
	FUNC21(dp, user_skb);

	((struct nlmsghdr *) user_skb->data)->nlmsg_len = user_skb->len;

	err = FUNC5(FUNC17(dp), user_skb, upcall_info->portid);
	user_skb = NULL;
out:
	if (err)
		FUNC24(skb);
	FUNC7(user_skb);
	FUNC7(nskb);
	return err;
}