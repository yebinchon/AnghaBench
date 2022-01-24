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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct psample_group {int /*<<< orphan*/  net; int /*<<< orphan*/  seq; int /*<<< orphan*/  group_num; } ;
struct nlattr {int /*<<< orphan*/  nla_len; int /*<<< orphan*/  nla_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NLA_ALIGNTO ; 
 int NLA_HDRLEN ; 
 int /*<<< orphan*/  PSAMPLE_ATTR_DATA ; 
 int /*<<< orphan*/  PSAMPLE_ATTR_GROUP_SEQ ; 
 int /*<<< orphan*/  PSAMPLE_ATTR_IIFINDEX ; 
 int /*<<< orphan*/  PSAMPLE_ATTR_OIFINDEX ; 
 int /*<<< orphan*/  PSAMPLE_ATTR_ORIGSIZE ; 
 int /*<<< orphan*/  PSAMPLE_ATTR_SAMPLE_GROUP ; 
 int /*<<< orphan*/  PSAMPLE_ATTR_SAMPLE_RATE ; 
 int /*<<< orphan*/  PSAMPLE_CMD_SAMPLE ; 
 int PSAMPLE_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  PSAMPLE_NL_MCGRP_SAMPLE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  psample_nl_family ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct nlattr* FUNC13 (struct sk_buff*,int) ; 
 scalar_t__ FUNC14 (int) ; 

void FUNC15(struct psample_group *group, struct sk_buff *skb,
			   u32 trunc_size, int in_ifindex, int out_ifindex,
			   u32 sample_rate)
{
	struct sk_buff *nl_skb;
	int data_len;
	int meta_len;
	void *data;
	int ret;

	meta_len = (in_ifindex ? FUNC9(sizeof(u16)) : 0) +
		   (out_ifindex ? FUNC9(sizeof(u16)) : 0) +
		   FUNC9(sizeof(u32)) +	/* sample_rate */
		   FUNC9(sizeof(u32)) +	/* orig_size */
		   FUNC9(sizeof(u32)) +	/* group_num */
		   FUNC9(sizeof(u32));		/* seq */

	data_len = FUNC4(skb->len, trunc_size);
	if (meta_len + FUNC9(data_len) > PSAMPLE_MAX_PACKET_SIZE)
		data_len = PSAMPLE_MAX_PACKET_SIZE - meta_len - NLA_HDRLEN
			    - NLA_ALIGNTO;

	nl_skb = FUNC2(meta_len + data_len, GFP_ATOMIC);
	if (FUNC14(!nl_skb))
		return;

	data = FUNC3(nl_skb, 0, 0, &psample_nl_family, 0,
			   PSAMPLE_CMD_SAMPLE);
	if (FUNC14(!data))
		goto error;

	if (in_ifindex) {
		ret = FUNC7(nl_skb, PSAMPLE_ATTR_IIFINDEX, in_ifindex);
		if (FUNC14(ret < 0))
			goto error;
	}

	if (out_ifindex) {
		ret = FUNC7(nl_skb, PSAMPLE_ATTR_OIFINDEX, out_ifindex);
		if (FUNC14(ret < 0))
			goto error;
	}

	ret = FUNC8(nl_skb, PSAMPLE_ATTR_SAMPLE_RATE, sample_rate);
	if (FUNC14(ret < 0))
		goto error;

	ret = FUNC8(nl_skb, PSAMPLE_ATTR_ORIGSIZE, skb->len);
	if (FUNC14(ret < 0))
		goto error;

	ret = FUNC8(nl_skb, PSAMPLE_ATTR_SAMPLE_GROUP, group->group_num);
	if (FUNC14(ret < 0))
		goto error;

	ret = FUNC8(nl_skb, PSAMPLE_ATTR_GROUP_SEQ, group->seq++);
	if (FUNC14(ret < 0))
		goto error;

	if (data_len) {
		int nla_len = FUNC9(data_len);
		struct nlattr *nla;

		nla = FUNC13(nl_skb, nla_len);
		nla->nla_type = PSAMPLE_ATTR_DATA;
		nla->nla_len = FUNC5(data_len);

		if (FUNC12(skb, 0, FUNC6(nla), data_len))
			goto error;
	}

	FUNC0(nl_skb, data);
	FUNC1(&psample_nl_family, group->net, nl_skb, 0,
				PSAMPLE_NL_MCGRP_SAMPLE, GFP_ATOMIC);

	return;
error:
	FUNC11("Could not create psample log message\n");
	FUNC10(nl_skb);
}