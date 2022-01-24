#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u16 ;
struct vport {TYPE_2__* dev; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct sw_flow_key {TYPE_1__ eth; } ;
struct sk_buff {unsigned long _skb_refdst; int /*<<< orphan*/  sk; int /*<<< orphan*/  inner_network_header; int /*<<< orphan*/  network_header; int /*<<< orphan*/  protocol; } ;
struct dst_entry {TYPE_2__* dev; } ;
struct rt6_info {struct dst_entry dst; } ;
struct nf_ipv6_ops {int /*<<< orphan*/  (* fragment ) (struct net*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ;} ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  ovs_rt ;
struct TYPE_8__ {void* frag_max_size; } ;
struct TYPE_7__ {void* frag_max_size; } ;
struct TYPE_6__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_NOCOUNT ; 
 int /*<<< orphan*/  DST_OBSOLETE_NONE ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ MAX_L2_LEN ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt6_info*,int /*<<< orphan*/ ,int) ; 
 struct nf_ipv6_ops* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  ovs_dst_ops ; 
 int /*<<< orphan*/  FUNC12 (struct sw_flow_key*) ; 
 int /*<<< orphan*/  FUNC13 (struct vport*) ; 
 int /*<<< orphan*/  ovs_vport_output ; 
 int /*<<< orphan*/  FUNC14 (struct vport*,struct sk_buff*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct dst_entry*) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct net*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct net *net, struct vport *vport,
			 struct sk_buff *skb, u16 mru,
			 struct sw_flow_key *key)
{
	u16 orig_network_offset = 0;

	if (FUNC5(skb->protocol)) {
		orig_network_offset = FUNC17(skb);
		skb->network_header = skb->inner_network_header;
	}

	if (FUNC17(skb) > MAX_L2_LEN) {
		FUNC2(1, "L2 header too long to fragment");
		goto err;
	}

	if (key->eth.type == FUNC6(ETH_P_IP)) {
		struct dst_entry ovs_dst;
		unsigned long orig_dst;

		FUNC14(vport, skb, orig_network_offset,
			     FUNC12(key));
		FUNC4(&ovs_dst, &ovs_dst_ops, NULL, 1,
			 DST_OBSOLETE_NONE, DST_NOCOUNT);
		ovs_dst.dev = vport->dev;

		orig_dst = skb->_skb_refdst;
		FUNC16(skb, &ovs_dst);
		FUNC1(skb)->frag_max_size = mru;

		FUNC7(net, skb->sk, skb, ovs_vport_output);
		FUNC15(orig_dst);
	} else if (key->eth.type == FUNC6(ETH_P_IPV6)) {
		const struct nf_ipv6_ops *v6ops = FUNC10();
		unsigned long orig_dst;
		struct rt6_info ovs_rt;

		if (!v6ops)
			goto err;

		FUNC14(vport, skb, orig_network_offset,
			     FUNC12(key));
		FUNC9(&ovs_rt, 0, sizeof(ovs_rt));
		FUNC4(&ovs_rt.dst, &ovs_dst_ops, NULL, 1,
			 DST_OBSOLETE_NONE, DST_NOCOUNT);
		ovs_rt.dst.dev = vport->dev;

		orig_dst = skb->_skb_refdst;
		FUNC16(skb, &ovs_rt.dst);
		FUNC0(skb)->frag_max_size = mru;

		v6ops->fragment(net, skb->sk, skb, ovs_vport_output);
		FUNC15(orig_dst);
	} else {
		FUNC3(1, "Failed fragment ->%s: eth=%04x, MRU=%d, MTU=%d.",
			  FUNC13(vport), FUNC11(key->eth.type), mru,
			  vport->dev->mtu);
		goto err;
	}

	return;
err:
	FUNC8(skb);
}