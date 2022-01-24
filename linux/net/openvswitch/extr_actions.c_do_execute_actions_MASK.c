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
typedef  int /*<<< orphan*/  u8 ;
struct sw_flow_key {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct ovs_action_trunc {scalar_t__ max_len; } ;
struct nshhdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct datapath {int dummy; } ;
struct TYPE_2__ {scalar_t__ cutlen; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NSH_HDR_MAX_LEN ; 
#define  OVS_ACTION_ATTR_CHECK_PKT_LEN 149 
#define  OVS_ACTION_ATTR_CLONE 148 
#define  OVS_ACTION_ATTR_CT 147 
#define  OVS_ACTION_ATTR_CT_CLEAR 146 
#define  OVS_ACTION_ATTR_HASH 145 
#define  OVS_ACTION_ATTR_METER 144 
#define  OVS_ACTION_ATTR_OUTPUT 143 
#define  OVS_ACTION_ATTR_POP_ETH 142 
#define  OVS_ACTION_ATTR_POP_MPLS 141 
#define  OVS_ACTION_ATTR_POP_NSH 140 
#define  OVS_ACTION_ATTR_POP_VLAN 139 
#define  OVS_ACTION_ATTR_PUSH_ETH 138 
#define  OVS_ACTION_ATTR_PUSH_MPLS 137 
#define  OVS_ACTION_ATTR_PUSH_NSH 136 
#define  OVS_ACTION_ATTR_PUSH_VLAN 135 
#define  OVS_ACTION_ATTR_RECIRC 134 
#define  OVS_ACTION_ATTR_SAMPLE 133 
#define  OVS_ACTION_ATTR_SET 132 
#define  OVS_ACTION_ATTR_SET_MASKED 131 
#define  OVS_ACTION_ATTR_SET_TO_MASKED 130 
#define  OVS_ACTION_ATTR_TRUNC 129 
#define  OVS_ACTION_ATTR_USERSPACE 128 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct datapath*,struct sk_buff*,int,struct sw_flow_key*) ; 
 int FUNC4 (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct sw_flow_key*,struct nlattr const*) ; 
 int FUNC6 (struct sk_buff*,struct sw_flow_key*,struct ovs_action_trunc*) ; 
 int FUNC7 (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ; 
 int FUNC8 (struct sk_buff*,struct sw_flow_key*,struct ovs_action_trunc*) ; 
 int /*<<< orphan*/  FUNC9 (struct sw_flow_key*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct ovs_action_trunc* FUNC11 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC12 (struct nlattr const*) ; 
 int FUNC13 (struct nlattr const*) ; 
 int FUNC14 (struct nlattr const*,int) ; 
 struct nlattr* FUNC15 (struct nlattr const*,int*) ; 
 int FUNC16 (struct nlattr const*) ; 
 int FUNC17 (struct ovs_action_trunc*,struct nshhdr*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,struct nlattr const*,int,scalar_t__) ; 
 int FUNC19 (struct sk_buff*,struct sw_flow_key*) ; 
 int FUNC20 (int /*<<< orphan*/ ,struct sk_buff*,struct sw_flow_key*,struct ovs_action_trunc*) ; 
 int /*<<< orphan*/  FUNC21 (struct datapath*) ; 
 int FUNC22 (struct sk_buff*,struct sw_flow_key*) ; 
 int /*<<< orphan*/  FUNC23 (struct datapath*,struct sk_buff*,struct sw_flow_key*,int) ; 
 int FUNC24 (struct sk_buff*,struct sw_flow_key*) ; 
 int FUNC25 (struct sk_buff*,struct sw_flow_key*,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct sk_buff*,struct sw_flow_key*) ; 
 int FUNC27 (struct sk_buff*,struct sw_flow_key*) ; 
 int FUNC28 (struct sk_buff*,struct sw_flow_key*,struct ovs_action_trunc*) ; 
 int FUNC29 (struct sk_buff*,struct sw_flow_key*,struct ovs_action_trunc*) ; 
 int FUNC30 (struct sk_buff*,struct sw_flow_key*,struct nshhdr*) ; 
 int FUNC31 (struct sk_buff*,struct sw_flow_key*,struct ovs_action_trunc*) ; 
 int FUNC32 (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ; 
 struct sk_buff* FUNC33 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (int) ; 

__attribute__((used)) static int FUNC35(struct datapath *dp, struct sk_buff *skb,
			      struct sw_flow_key *key,
			      const struct nlattr *attr, int len)
{
	const struct nlattr *a;
	int rem;

	for (a = attr, rem = len; rem > 0;
	     a = FUNC15(a, &rem)) {
		int err = 0;

		switch (FUNC16(a)) {
		case OVS_ACTION_ATTR_OUTPUT: {
			int port = FUNC13(a);
			struct sk_buff *clone;

			/* Every output action needs a separate clone
			 * of 'skb', In case the output action is the
			 * last action, cloning can be avoided.
			 */
			if (FUNC14(a, rem)) {
				FUNC3(dp, skb, port, key);
				/* 'skb' has been used for output.
				 */
				return 0;
			}

			clone = FUNC33(skb, GFP_ATOMIC);
			if (clone)
				FUNC3(dp, clone, port, key);
			FUNC0(skb)->cutlen = 0;
			break;
		}

		case OVS_ACTION_ATTR_TRUNC: {
			struct ovs_action_trunc *trunc = FUNC11(a);

			if (skb->len > trunc->max_len)
				FUNC0(skb)->cutlen = skb->len - trunc->max_len;
			break;
		}

		case OVS_ACTION_ATTR_USERSPACE:
			FUNC18(dp, skb, key, a, attr,
						     len, FUNC0(skb)->cutlen);
			FUNC0(skb)->cutlen = 0;
			break;

		case OVS_ACTION_ATTR_HASH:
			FUNC5(skb, key, a);
			break;

		case OVS_ACTION_ATTR_PUSH_MPLS:
			err = FUNC29(skb, key, FUNC11(a));
			break;

		case OVS_ACTION_ATTR_POP_MPLS:
			err = FUNC25(skb, key, FUNC12(a));
			break;

		case OVS_ACTION_ATTR_PUSH_VLAN:
			err = FUNC31(skb, key, FUNC11(a));
			break;

		case OVS_ACTION_ATTR_POP_VLAN:
			err = FUNC27(skb, key);
			break;

		case OVS_ACTION_ATTR_RECIRC: {
			bool last = FUNC14(a, rem);

			err = FUNC7(dp, skb, key, a, last);
			if (last) {
				/* If this is the last action, the skb has
				 * been consumed or freed.
				 * Return immediately.
				 */
				return err;
			}
			break;
		}

		case OVS_ACTION_ATTR_SET:
			err = FUNC8(skb, key, FUNC11(a));
			break;

		case OVS_ACTION_ATTR_SET_MASKED:
		case OVS_ACTION_ATTR_SET_TO_MASKED:
			err = FUNC6(skb, key, FUNC11(a));
			break;

		case OVS_ACTION_ATTR_SAMPLE: {
			bool last = FUNC14(a, rem);

			err = FUNC32(dp, skb, key, a, last);
			if (last)
				return err;

			break;
		}

		case OVS_ACTION_ATTR_CT:
			if (!FUNC9(key)) {
				err = FUNC22(skb, key);
				if (err)
					return err;
			}

			err = FUNC20(FUNC21(dp), skb, key,
					     FUNC11(a));

			/* Hide stolen IP fragments from user space. */
			if (err)
				return err == -EINPROGRESS ? 0 : err;
			break;

		case OVS_ACTION_ATTR_CT_CLEAR:
			err = FUNC19(skb, key);
			break;

		case OVS_ACTION_ATTR_PUSH_ETH:
			err = FUNC28(skb, key, FUNC11(a));
			break;

		case OVS_ACTION_ATTR_POP_ETH:
			err = FUNC24(skb, key);
			break;

		case OVS_ACTION_ATTR_PUSH_NSH: {
			u8 buffer[NSH_HDR_MAX_LEN];
			struct nshhdr *nh = (struct nshhdr *)buffer;

			err = FUNC17(FUNC11(a), nh,
						  NSH_HDR_MAX_LEN);
			if (FUNC34(err))
				break;
			err = FUNC30(skb, key, nh);
			break;
		}

		case OVS_ACTION_ATTR_POP_NSH:
			err = FUNC26(skb, key);
			break;

		case OVS_ACTION_ATTR_METER:
			if (FUNC23(dp, skb, key, FUNC13(a))) {
				FUNC2(skb);
				return 0;
			}
			break;

		case OVS_ACTION_ATTR_CLONE: {
			bool last = FUNC14(a, rem);

			err = FUNC1(dp, skb, key, a, last);
			if (last)
				return err;

			break;
		}

		case OVS_ACTION_ATTR_CHECK_PKT_LEN: {
			bool last = FUNC14(a, rem);

			err = FUNC4(dp, skb, key, a, last);
			if (last)
				return err;

			break;
		}
		}

		if (FUNC34(err)) {
			FUNC10(skb);
			return err;
		}
	}

	FUNC2(skb);
	return 0;
}