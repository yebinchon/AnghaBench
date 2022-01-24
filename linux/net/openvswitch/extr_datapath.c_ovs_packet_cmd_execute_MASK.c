#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct vport {int /*<<< orphan*/  dev; } ;
struct sw_flow_actions {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  in_port; int /*<<< orphan*/  skb_mark; int /*<<< orphan*/  priority; } ;
struct TYPE_7__ {TYPE_1__ phy; } ;
struct sw_flow {TYPE_2__ key; int /*<<< orphan*/  sf_acts; } ;
struct sk_buff {int ignore_df; int /*<<< orphan*/  dev; int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; int /*<<< orphan*/  sk; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {struct nlattr** attrs; struct ovs_header* userhdr; } ;
struct datapath {int dummy; } ;
struct TYPE_8__ {struct vport* input_vport; int /*<<< orphan*/  mru; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct sw_flow*) ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  OVSP_LOCAL ; 
 TYPE_5__* FUNC1 (struct sk_buff*) ; 
 size_t OVS_PACKET_ATTR_ACTIONS ; 
 size_t OVS_PACKET_ATTR_KEY ; 
 size_t OVS_PACKET_ATTR_MRU ; 
 size_t OVS_PACKET_ATTR_PACKET ; 
 size_t OVS_PACKET_ATTR_PROBE ; 
 int FUNC2 (struct sw_flow*) ; 
 struct sk_buff* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 struct datapath* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr*) ; 
 int FUNC10 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct nlattr*,int) ; 
 int FUNC12 (struct datapath*,struct sk_buff*,struct sw_flow_actions*,TYPE_2__*) ; 
 struct sw_flow* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct sw_flow*,int) ; 
 int FUNC15 (struct net*,struct nlattr*,struct sk_buff*,TYPE_2__*,int) ; 
 int FUNC16 (struct net*,struct nlattr*,TYPE_2__*,struct sw_flow_actions**,int) ; 
 struct vport* FUNC17 (struct datapath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct sw_flow_actions*) ; 
 struct sw_flow_actions* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,scalar_t__) ; 
 struct net* FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct sk_buff *skb, struct genl_info *info)
{
	struct ovs_header *ovs_header = info->userhdr;
	struct net *net = FUNC23(skb->sk);
	struct nlattr **a = info->attrs;
	struct sw_flow_actions *acts;
	struct sk_buff *packet;
	struct sw_flow *flow;
	struct sw_flow_actions *sf_acts;
	struct datapath *dp;
	struct vport *input_vport;
	u16 mru = 0;
	int len;
	int err;
	bool log = !a[OVS_PACKET_ATTR_PROBE];

	err = -EINVAL;
	if (!a[OVS_PACKET_ATTR_PACKET] || !a[OVS_PACKET_ATTR_KEY] ||
	    !a[OVS_PACKET_ATTR_ACTIONS])
		goto err;

	len = FUNC10(a[OVS_PACKET_ATTR_PACKET]);
	packet = FUNC3(NET_IP_ALIGN + len, GFP_KERNEL);
	err = -ENOMEM;
	if (!packet)
		goto err;
	FUNC22(packet, NET_IP_ALIGN);

	FUNC11(FUNC4(packet, len), a[OVS_PACKET_ATTR_PACKET], len);

	/* Set packet's mru */
	if (a[OVS_PACKET_ATTR_MRU]) {
		mru = FUNC9(a[OVS_PACKET_ATTR_MRU]);
		packet->ignore_df = 1;
	}
	FUNC1(packet)->mru = mru;

	/* Build an sw_flow for sending this packet. */
	flow = FUNC13();
	err = FUNC2(flow);
	if (FUNC0(flow))
		goto err_kfree_skb;

	err = FUNC15(net, a[OVS_PACKET_ATTR_KEY],
					     packet, &flow->key, log);
	if (err)
		goto err_flow_free;

	err = FUNC16(net, a[OVS_PACKET_ATTR_ACTIONS],
				   &flow->key, &acts, log);
	if (err)
		goto err_flow_free;

	FUNC18(flow->sf_acts, acts);
	packet->priority = flow->key.phy.priority;
	packet->mark = flow->key.phy.skb_mark;

	FUNC20();
	dp = FUNC5(net, ovs_header->dp_ifindex);
	err = -ENODEV;
	if (!dp)
		goto err_unlock;

	input_vport = FUNC17(dp, flow->key.phy.in_port);
	if (!input_vport)
		input_vport = FUNC17(dp, OVSP_LOCAL);

	if (!input_vport)
		goto err_unlock;

	packet->dev = input_vport->dev;
	FUNC1(packet)->input_vport = input_vport;
	sf_acts = FUNC19(flow->sf_acts);

	FUNC7();
	err = FUNC12(dp, packet, sf_acts, &flow->key);
	FUNC8();
	FUNC21();

	FUNC14(flow, false);
	return err;

err_unlock:
	FUNC21();
err_flow_free:
	FUNC14(flow, false);
err_kfree_skb:
	FUNC6(packet);
err:
	return err;
}