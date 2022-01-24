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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  len; int /*<<< orphan*/  tstamp; int /*<<< orphan*/  skb_iif; } ;
struct nlattr {int /*<<< orphan*/  nla_len; int /*<<< orphan*/  nla_type; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {scalar_t__ pc; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NET_DM_ATTR_ORIGIN ; 
 int /*<<< orphan*/  NET_DM_ATTR_ORIG_LEN ; 
 int /*<<< orphan*/  NET_DM_ATTR_PAD ; 
 int /*<<< orphan*/  NET_DM_ATTR_PAYLOAD ; 
 int /*<<< orphan*/  NET_DM_ATTR_PC ; 
 int /*<<< orphan*/  NET_DM_ATTR_PROTO ; 
 int /*<<< orphan*/  NET_DM_ATTR_SYMBOL ; 
 int /*<<< orphan*/  NET_DM_ATTR_TIMESTAMP ; 
 int /*<<< orphan*/  NET_DM_CMD_PACKET_ALERT ; 
 int NET_DM_MAX_SYMBOL_LEN ; 
 int /*<<< orphan*/  NET_DM_ORIGIN_SW ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  net_drop_monitor_family ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (size_t) ; 
 scalar_t__ FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct nlattr* FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *msg, struct sk_buff *skb,
				     size_t payload_len)
{
	u64 pc = (u64)(uintptr_t) FUNC0(skb)->pc;
	char buf[NET_DM_MAX_SYMBOL_LEN];
	struct nlattr *attr;
	void *hdr;
	int rc;

	hdr = FUNC4(msg, 0, 0, &net_drop_monitor_family, 0,
			  NET_DM_CMD_PACKET_ALERT);
	if (!hdr)
		return -EMSGSIZE;

	if (FUNC10(msg, NET_DM_ATTR_ORIGIN, NET_DM_ORIGIN_SW))
		goto nla_put_failure;

	if (FUNC12(msg, NET_DM_ATTR_PC, pc, NET_DM_ATTR_PAD))
		goto nla_put_failure;

	FUNC16(buf, sizeof(buf), "%pS", FUNC0(skb)->pc);
	if (FUNC9(msg, NET_DM_ATTR_SYMBOL, buf))
		goto nla_put_failure;

	rc = FUNC6(msg, skb->skb_iif, NULL);
	if (rc)
		goto nla_put_failure;

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