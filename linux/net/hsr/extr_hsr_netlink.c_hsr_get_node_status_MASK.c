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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int ifindex; } ;
struct hsr_priv {int dummy; } ;
struct hsr_port {TYPE_1__* dev; } ;
struct genl_info {int /*<<< orphan*/  snd_portid; struct nlattr** attrs; int /*<<< orphan*/  snd_seq; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t HSR_A_ADDR_B_IFINDEX ; 
 size_t HSR_A_IF1_AGE ; 
 size_t HSR_A_IF1_IFINDEX ; 
 int /*<<< orphan*/  HSR_A_IF1_SEQ ; 
 size_t HSR_A_IF2_AGE ; 
 size_t HSR_A_IF2_IFINDEX ; 
 int /*<<< orphan*/  HSR_A_IF2_SEQ ; 
 size_t HSR_A_IFINDEX ; 
 size_t HSR_A_NODE_ADDR ; 
 size_t HSR_A_NODE_ADDR_B ; 
 int /*<<< orphan*/  HSR_C_SET_NODE_STATUS ; 
 int /*<<< orphan*/  HSR_PT_SLAVE_A ; 
 int /*<<< orphan*/  HSR_PT_SLAVE_B ; 
 TYPE_2__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hsr_genl_family ; 
 int FUNC7 (struct hsr_priv*,unsigned char*,unsigned char*,int*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 struct hsr_port* FUNC8 (struct hsr_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct hsr_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC13 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC14 (struct nlattr*) ; 
 int FUNC15 (struct sk_buff*,size_t,int,unsigned char*) ; 
 int FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct sk_buff*,size_t,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 

__attribute__((used)) static int FUNC21(struct sk_buff *skb_in, struct genl_info *info)
{
	/* For receiving */
	struct nlattr *na;
	struct net_device *hsr_dev;

	/* For sending */
	struct sk_buff *skb_out;
	void *msg_head;
	struct hsr_priv *hsr;
	struct hsr_port *port;
	unsigned char hsr_node_addr_b[ETH_ALEN];
	int hsr_node_if1_age;
	u16 hsr_node_if1_seq;
	int hsr_node_if2_age;
	u16 hsr_node_if2_seq;
	int addr_b_ifindex;
	int res;

	if (!info)
		goto invalid;

	na = info->attrs[HSR_A_IFINDEX];
	if (!na)
		goto invalid;
	na = info->attrs[HSR_A_NODE_ADDR];
	if (!na)
		goto invalid;

	hsr_dev = FUNC1(FUNC2(info),
				     FUNC14(info->attrs[HSR_A_IFINDEX]));
	if (!hsr_dev)
		goto invalid;
	if (!FUNC9(hsr_dev))
		goto invalid;

	/* Send reply */
	skb_out = FUNC4(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!skb_out) {
		res = -ENOMEM;
		goto fail;
	}

	msg_head = FUNC5(skb_out, FUNC0(skb_in).portid,
			       info->snd_seq, &hsr_genl_family, 0,
			       HSR_C_SET_NODE_STATUS);
	if (!msg_head) {
		res = -ENOMEM;
		goto nla_put_failure;
	}

	res = FUNC17(skb_out, HSR_A_IFINDEX, hsr_dev->ifindex);
	if (res < 0)
		goto nla_put_failure;

	hsr = FUNC11(hsr_dev);
	res = FUNC7(hsr,
				(unsigned char *)
				FUNC13(info->attrs[HSR_A_NODE_ADDR]),
					 hsr_node_addr_b,
					 &addr_b_ifindex,
					 &hsr_node_if1_age,
					 &hsr_node_if1_seq,
					 &hsr_node_if2_age,
					 &hsr_node_if2_seq);
	if (res < 0)
		goto nla_put_failure;

	res = FUNC15(skb_out, HSR_A_NODE_ADDR, ETH_ALEN,
		      FUNC13(info->attrs[HSR_A_NODE_ADDR]));
	if (res < 0)
		goto nla_put_failure;

	if (addr_b_ifindex > -1) {
		res = FUNC15(skb_out, HSR_A_NODE_ADDR_B, ETH_ALEN,
			      hsr_node_addr_b);
		if (res < 0)
			goto nla_put_failure;

		res = FUNC17(skb_out, HSR_A_ADDR_B_IFINDEX,
				  addr_b_ifindex);
		if (res < 0)
			goto nla_put_failure;
	}

	res = FUNC17(skb_out, HSR_A_IF1_AGE, hsr_node_if1_age);
	if (res < 0)
		goto nla_put_failure;
	res = FUNC16(skb_out, HSR_A_IF1_SEQ, hsr_node_if1_seq);
	if (res < 0)
		goto nla_put_failure;
	FUNC19();
	port = FUNC8(hsr, HSR_PT_SLAVE_A);
	if (port)
		res = FUNC17(skb_out, HSR_A_IF1_IFINDEX,
				  port->dev->ifindex);
	FUNC20();
	if (res < 0)
		goto nla_put_failure;

	res = FUNC17(skb_out, HSR_A_IF2_AGE, hsr_node_if2_age);
	if (res < 0)
		goto nla_put_failure;
	res = FUNC16(skb_out, HSR_A_IF2_SEQ, hsr_node_if2_seq);
	if (res < 0)
		goto nla_put_failure;
	FUNC19();
	port = FUNC8(hsr, HSR_PT_SLAVE_B);
	if (port)
		res = FUNC17(skb_out, HSR_A_IF2_IFINDEX,
				  port->dev->ifindex);
	FUNC20();
	if (res < 0)
		goto nla_put_failure;

	FUNC3(skb_out, msg_head);
	FUNC6(FUNC2(info), skb_out, info->snd_portid);

	return 0;

invalid:
	FUNC12(skb_in, FUNC18(skb_in), -EINVAL, NULL);
	return 0;

nla_put_failure:
	FUNC10(skb_out);
	/* Fall through */

fail:
	return res;
}