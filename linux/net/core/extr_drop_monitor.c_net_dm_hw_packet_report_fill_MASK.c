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
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  len; int /*<<< orphan*/  tstamp; } ;
struct nlattr {int /*<<< orphan*/  nla_len; int /*<<< orphan*/  nla_type; } ;
struct net_dm_hw_metadata {struct net_device* input_dev; int /*<<< orphan*/  trap_name; int /*<<< orphan*/  trap_group_name; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  ifindex; } ;
struct TYPE_2__ {struct net_dm_hw_metadata* hw_metadata; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NET_DM_ATTR_HW_TRAP_GROUP_NAME ; 
 int /*<<< orphan*/  NET_DM_ATTR_HW_TRAP_NAME ; 
 int /*<<< orphan*/  NET_DM_ATTR_ORIGIN ; 
 int /*<<< orphan*/  NET_DM_ATTR_ORIG_LEN ; 
 int /*<<< orphan*/  NET_DM_ATTR_PAD ; 
 int /*<<< orphan*/  NET_DM_ATTR_PAYLOAD ; 
 int /*<<< orphan*/  NET_DM_ATTR_PROTO ; 
 int /*<<< orphan*/  NET_DM_ATTR_TIMESTAMP ; 
 int /*<<< orphan*/  NET_DM_CMD_PACKET_ALERT ; 
 int /*<<< orphan*/  NET_DM_ORIGIN_HW ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  net_drop_monitor_family ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (size_t) ; 
 scalar_t__ FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct nlattr* FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *msg,
					struct sk_buff *skb, size_t payload_len)
{
	struct net_dm_hw_metadata *hw_metadata;
	struct nlattr *attr;
	void *hdr;

	hw_metadata = FUNC0(skb)->hw_metadata;

	hdr = FUNC4(msg, 0, 0, &net_drop_monitor_family, 0,
			  NET_DM_CMD_PACKET_ALERT);
	if (!hdr)
		return -EMSGSIZE;

	if (FUNC10(msg, NET_DM_ATTR_ORIGIN, NET_DM_ORIGIN_HW))
		goto nla_put_failure;

	if (FUNC9(msg, NET_DM_ATTR_HW_TRAP_GROUP_NAME,
			   hw_metadata->trap_group_name))
		goto nla_put_failure;

	if (FUNC9(msg, NET_DM_ATTR_HW_TRAP_NAME,
			   hw_metadata->trap_name))
		goto nla_put_failure;

	if (hw_metadata->input_dev) {
		struct net_device *dev = hw_metadata->input_dev;
		int rc;

		rc = FUNC6(msg, dev->ifindex,
						      dev->name);
		if (rc)
			goto nla_put_failure;
	}

	if (FUNC12(msg, NET_DM_ATTR_TIMESTAMP,
			      FUNC5(skb->tstamp), NET_DM_ATTR_PAD))
		goto nla_put_failure;

	if (FUNC11(msg, NET_DM_ATTR_ORIG_LEN, skb->len))
		goto nla_put_failure;

	if (!payload_len)
		goto out;

	if (FUNC10(msg, NET_DM_ATTR_PROTO, FUNC1(skb->protocol)))
		goto nla_put_failure;

	attr = FUNC15(msg, FUNC13(payload_len));
	attr->nla_type = NET_DM_ATTR_PAYLOAD;
	attr->nla_len = FUNC7(payload_len);
	if (FUNC14(skb, 0, FUNC8(attr), payload_len))
		goto nla_put_failure;

out:
	FUNC3(msg, hdr);

	return 0;

nla_put_failure:
	FUNC2(msg, hdr);
	return -EMSGSIZE;
}