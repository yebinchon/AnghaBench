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
typedef  scalar_t__ u16 ;
struct sk_buff {int ignore_df; } ;
struct nf_hook_state {int /*<<< orphan*/  net; } ;
struct nf_conn {int dummy; } ;
struct inet_skb_parm {int dummy; } ;
struct br_input_skb_cb {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_2__ {int /*<<< orphan*/  frag_max_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ IP_DEFRAG_CONNTRACK_BRIDGE_IN ; 
 unsigned int NF_ACCEPT ; 
 scalar_t__ NF_CT_DEFAULT_ZONE_ID ; 
 unsigned int NF_STOLEN ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct br_input_skb_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct br_input_skb_cb*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct nf_conn* FUNC9 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct nf_conn const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC12(struct sk_buff *skb,
				     const struct nf_hook_state *state)
{
	u16 zone_id = NF_CT_DEFAULT_ZONE_ID;
	enum ip_conntrack_info ctinfo;
	struct br_input_skb_cb cb;
	const struct nf_conn *ct;
	int err;

	if (!FUNC6(FUNC5(skb)))
		return NF_ACCEPT;

	ct = FUNC9(skb, &ctinfo);
	if (ct)
		zone_id = FUNC11(FUNC10(ct), FUNC0(ctinfo));

	FUNC3(skb, &cb, sizeof(struct inet_skb_parm));
	FUNC7();
	err = FUNC4(state->net, skb,
			IP_DEFRAG_CONNTRACK_BRIDGE_IN + zone_id);
	FUNC8();
	if (!err) {
		FUNC2(skb, &cb, FUNC1(skb)->frag_max_size);
		skb->ignore_df = 1;
		return NF_ACCEPT;
	}

	return NF_STOLEN;
}