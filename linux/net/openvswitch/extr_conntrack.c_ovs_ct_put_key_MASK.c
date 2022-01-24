#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct ovs_key_ct_tuple_ipv6 {scalar_t__ member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_14__ {TYPE_6__ orig_tp; struct ovs_key_ct_tuple_ipv6 labels; int /*<<< orphan*/  mark; } ;
struct TYPE_11__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_12__ {TYPE_4__ ct_orig; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_8__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_9__ {TYPE_1__ ct_orig; } ;
struct sw_flow_key {scalar_t__ ct_orig_proto; TYPE_7__ ct; TYPE_5__ ipv6; TYPE_3__ eth; TYPE_2__ ipv4; int /*<<< orphan*/  ct_zone; int /*<<< orphan*/  ct_state; } ;
struct sk_buff {int dummy; } ;
struct ovs_key_ct_tuple_ipv4 {scalar_t__ member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  orig ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_LABELS ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_MARK ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_ZONES ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OVS_KEY_ATTR_CT_LABELS ; 
 int /*<<< orphan*/  OVS_KEY_ATTR_CT_MARK ; 
 int /*<<< orphan*/  OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV4 ; 
 int /*<<< orphan*/  OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6 ; 
 int /*<<< orphan*/  OVS_KEY_ATTR_CT_STATE ; 
 int /*<<< orphan*/  OVS_KEY_ATTR_CT_ZONE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct ovs_key_ct_tuple_ipv6*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(const struct sw_flow_key *swkey,
		   const struct sw_flow_key *output, struct sk_buff *skb)
{
	if (FUNC5(skb, OVS_KEY_ATTR_CT_STATE, output->ct_state))
		return -EMSGSIZE;

	if (FUNC1(CONFIG_NF_CONNTRACK_ZONES) &&
	    FUNC4(skb, OVS_KEY_ATTR_CT_ZONE, output->ct_zone))
		return -EMSGSIZE;

	if (FUNC1(CONFIG_NF_CONNTRACK_MARK) &&
	    FUNC5(skb, OVS_KEY_ATTR_CT_MARK, output->ct.mark))
		return -EMSGSIZE;

	if (FUNC1(CONFIG_NF_CONNTRACK_LABELS) &&
	    FUNC3(skb, OVS_KEY_ATTR_CT_LABELS, sizeof(output->ct.labels),
		    &output->ct.labels))
		return -EMSGSIZE;

	if (swkey->ct_orig_proto) {
		if (swkey->eth.type == FUNC2(ETH_P_IP)) {
			struct ovs_key_ct_tuple_ipv4 orig = {
				output->ipv4.ct_orig.src,
				output->ipv4.ct_orig.dst,
				output->ct.orig_tp.src,
				output->ct.orig_tp.dst,
				output->ct_orig_proto,
			};
			if (FUNC3(skb, OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV4,
				    sizeof(orig), &orig))
				return -EMSGSIZE;
		} else if (swkey->eth.type == FUNC2(ETH_P_IPV6)) {
			struct ovs_key_ct_tuple_ipv6 orig = {
				FUNC0(output->ipv6.ct_orig.src),
				FUNC0(output->ipv6.ct_orig.dst),
				output->ct.orig_tp.src,
				output->ct.orig_tp.dst,
				output->ct_orig_proto,
			};
			if (FUNC3(skb, OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6,
				    sizeof(orig), &orig))
				return -EMSGSIZE;
		}
	}

	return 0;
}