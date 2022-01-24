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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sw_flow {int /*<<< orphan*/  id; } ;
struct sk_buff {int len; } ;
struct ovs_header {int dp_ifindex; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  dp_flow_genl_family ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct ovs_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct ovs_header*) ; 
 struct ovs_header* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sw_flow const*,struct sk_buff*,int const) ; 
 int FUNC4 (struct sw_flow const*,struct sk_buff*) ; 
 int FUNC5 (struct sw_flow const*,struct sk_buff*) ; 
 int FUNC6 (struct sw_flow const*,struct sk_buff*) ; 
 int FUNC7 (struct sw_flow const*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(const struct sw_flow *flow, int dp_ifindex,
				  struct sk_buff *skb, u32 portid,
				  u32 seq, u32 flags, u8 cmd, u32 ufid_flags)
{
	const int skb_orig_len = skb->len;
	struct ovs_header *ovs_header;
	int err;

	ovs_header = FUNC2(skb, portid, seq, &dp_flow_genl_family,
				 flags, cmd);
	if (!ovs_header)
		return -EMSGSIZE;

	ovs_header->dp_ifindex = dp_ifindex;

	err = FUNC5(flow, skb);
	if (err)
		goto error;

	if (FUNC9(&flow->id, ufid_flags)) {
		err = FUNC7(flow, skb);
		if (err)
			goto error;
	}

	if (FUNC10(ufid_flags)) {
		err = FUNC6(flow, skb);
		if (err)
			goto error;
	}

	err = FUNC4(flow, skb);
	if (err)
		goto error;

	if (FUNC8(ufid_flags)) {
		err = FUNC3(flow, skb, skb_orig_len);
		if (err)
			goto error;
	}

	FUNC1(skb, ovs_header);
	return 0;

error:
	FUNC0(skb, ovs_header);
	return err;
}