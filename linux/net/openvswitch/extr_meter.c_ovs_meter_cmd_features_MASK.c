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
struct sk_buff {int dummy; } ;
struct ovs_header {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_MAX_BANDS ; 
 int EMSGSIZE ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  OVS_BAND_ATTR_TYPE ; 
 int /*<<< orphan*/  OVS_BAND_ATTR_UNSPEC ; 
 int /*<<< orphan*/  OVS_METER_ATTR_BANDS ; 
 int /*<<< orphan*/  OVS_METER_ATTR_MAX_BANDS ; 
 int /*<<< orphan*/  OVS_METER_ATTR_MAX_METERS ; 
 int /*<<< orphan*/  OVS_METER_BAND_TYPE_DROP ; 
 int /*<<< orphan*/  OVS_METER_CMD_FEATURES ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct ovs_header*) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (struct genl_info*,int /*<<< orphan*/ ,struct ovs_header**) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	struct sk_buff *reply;
	struct ovs_header *ovs_reply_header;
	struct nlattr *nla, *band_nla;
	int err;

	reply = FUNC8(info, OVS_METER_CMD_FEATURES,
					  &ovs_reply_header);
	if (FUNC0(reply))
		return FUNC1(reply);

	if (FUNC6(reply, OVS_METER_ATTR_MAX_METERS, U32_MAX) ||
	    FUNC6(reply, OVS_METER_ATTR_MAX_BANDS, DP_MAX_BANDS))
		goto nla_put_failure;

	nla = FUNC5(reply, OVS_METER_ATTR_BANDS);
	if (!nla)
		goto nla_put_failure;

	band_nla = FUNC5(reply, OVS_BAND_ATTR_UNSPEC);
	if (!band_nla)
		goto nla_put_failure;
	/* Currently only DROP band type is supported. */
	if (FUNC6(reply, OVS_BAND_ATTR_TYPE, OVS_METER_BAND_TYPE_DROP))
		goto nla_put_failure;
	FUNC4(reply, band_nla);
	FUNC4(reply, nla);

	FUNC2(reply, ovs_reply_header);
	return FUNC3(reply, info);

nla_put_failure:
	FUNC7(reply);
	err = -EMSGSIZE;
	return err;
}