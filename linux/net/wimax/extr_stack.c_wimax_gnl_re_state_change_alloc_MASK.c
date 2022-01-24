#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wimax_dev {TYPE_1__* net_dev; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
typedef  enum wimax_st { ____Placeholder_wimax_st } wimax_st ;
struct TYPE_5__ {int /*<<< orphan*/  mcgrp_offset; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  WIMAX_GNL_RE_STATE_CHANGE ; 
 int /*<<< orphan*/  WIMAX_GNL_STCH_IFIDX ; 
 int /*<<< orphan*/  WIMAX_GNL_STCH_STATE_NEW ; 
 int /*<<< orphan*/  WIMAX_GNL_STCH_STATE_OLD ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct wimax_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct wimax_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC9 (struct wimax_dev*) ; 
 TYPE_2__ wimax_gnl_family ; 

__attribute__((used)) static
struct sk_buff *FUNC10(
	struct wimax_dev *wimax_dev,
	enum wimax_st new_state, enum wimax_st old_state,
	void **header)
{
	int result;
	struct device *dev = FUNC9(wimax_dev);
	void *data;
	struct sk_buff *report_skb;

	FUNC2(3, dev, "(wimax_dev %p new_state %u old_state %u)\n",
		  wimax_dev, new_state, old_state);
	result = -ENOMEM;
	report_skb = FUNC8(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (report_skb == NULL) {
		FUNC3(dev, "RE_STCH: can't create message\n");
		goto error_new;
	}
	/* FIXME: sending a group ID as the seq is wrong */
	data = FUNC4(report_skb, 0, wimax_gnl_family.mcgrp_offset,
			   &wimax_gnl_family, 0, WIMAX_GNL_RE_STATE_CHANGE);
	if (data == NULL) {
		FUNC3(dev, "RE_STCH: can't put data into message\n");
		goto error_put;
	}
	*header = data;

	result = FUNC6(report_skb, WIMAX_GNL_STCH_STATE_OLD, old_state);
	if (result < 0) {
		FUNC3(dev, "RE_STCH: Error adding OLD attr: %d\n", result);
		goto error_put;
	}
	result = FUNC6(report_skb, WIMAX_GNL_STCH_STATE_NEW, new_state);
	if (result < 0) {
		FUNC3(dev, "RE_STCH: Error adding NEW attr: %d\n", result);
		goto error_put;
	}
	result = FUNC5(report_skb, WIMAX_GNL_STCH_IFIDX,
			     wimax_dev->net_dev->ifindex);
	if (result < 0) {
		FUNC3(dev, "RE_STCH: Error adding IFINDEX attribute\n");
		goto error_put;
	}
	FUNC1(3, dev, "(wimax_dev %p new_state %u old_state %u) = %p\n",
		wimax_dev, new_state, old_state, report_skb);
	return report_skb;

error_put:
	FUNC7(report_skb);
error_new:
	FUNC1(3, dev, "(wimax_dev %p new_state %u old_state %u) = %d\n",
		wimax_dev, new_state, old_state, result);
	return FUNC0(result);
}