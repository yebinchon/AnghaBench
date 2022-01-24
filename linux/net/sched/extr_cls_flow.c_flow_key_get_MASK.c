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
struct sk_buff {int dummy; } ;
struct flow_keys {int dummy; } ;

/* Variables and functions */
#define  FLOW_KEY_DST 145 
#define  FLOW_KEY_IIF 144 
#define  FLOW_KEY_MARK 143 
#define  FLOW_KEY_NFCT 142 
#define  FLOW_KEY_NFCT_DST 141 
#define  FLOW_KEY_NFCT_PROTO_DST 140 
#define  FLOW_KEY_NFCT_PROTO_SRC 139 
#define  FLOW_KEY_NFCT_SRC 138 
#define  FLOW_KEY_PRIORITY 137 
#define  FLOW_KEY_PROTO 136 
#define  FLOW_KEY_PROTO_DST 135 
#define  FLOW_KEY_PROTO_SRC 134 
#define  FLOW_KEY_RTCLASSID 133 
#define  FLOW_KEY_RXHASH 132 
#define  FLOW_KEY_SKGID 131 
#define  FLOW_KEY_SKUID 130 
#define  FLOW_KEY_SRC 129 
#define  FLOW_KEY_VLAN_TAG 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 

__attribute__((used)) static u32 FUNC19(struct sk_buff *skb, int key, struct flow_keys *flow)
{
	switch (key) {
	case FLOW_KEY_SRC:
		return FUNC17(skb, flow);
	case FLOW_KEY_DST:
		return FUNC1(skb, flow);
	case FLOW_KEY_PROTO:
		return FUNC10(skb, flow);
	case FLOW_KEY_PROTO_SRC:
		return FUNC12(skb, flow);
	case FLOW_KEY_PROTO_DST:
		return FUNC11(skb, flow);
	case FLOW_KEY_IIF:
		return FUNC2(skb);
	case FLOW_KEY_PRIORITY:
		return FUNC9(skb);
	case FLOW_KEY_MARK:
		return FUNC3(skb);
	case FLOW_KEY_NFCT:
		return FUNC4(skb);
	case FLOW_KEY_NFCT_SRC:
		return FUNC8(skb, flow);
	case FLOW_KEY_NFCT_DST:
		return FUNC5(skb, flow);
	case FLOW_KEY_NFCT_PROTO_SRC:
		return FUNC7(skb, flow);
	case FLOW_KEY_NFCT_PROTO_DST:
		return FUNC6(skb, flow);
	case FLOW_KEY_RTCLASSID:
		return FUNC13(skb);
	case FLOW_KEY_SKUID:
		return FUNC16(skb);
	case FLOW_KEY_SKGID:
		return FUNC15(skb);
	case FLOW_KEY_VLAN_TAG:
		return FUNC18(skb);
	case FLOW_KEY_RXHASH:
		return FUNC14(skb);
	default:
		FUNC0(1);
		return 0;
	}
}