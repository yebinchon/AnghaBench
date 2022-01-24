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
struct wimax_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct wimax_dev*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct wimax_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC4 (struct wimax_dev*) ; 
 int /*<<< orphan*/  wimax_gnl_family ; 

__attribute__((used)) static
int FUNC5(
	struct wimax_dev *wimax_dev, struct sk_buff *report_skb,
	void *header)
{
	int result = 0;
	struct device *dev = FUNC4(wimax_dev);
	FUNC1(3, dev, "(wimax_dev %p report_skb %p)\n",
		  wimax_dev, report_skb);
	if (report_skb == NULL) {
		result = -ENOMEM;
		goto out;
	}
	FUNC2(report_skb, header);
	FUNC3(&wimax_gnl_family, report_skb, 0, 0, GFP_KERNEL);
out:
	FUNC0(3, dev, "(wimax_dev %p report_skb %p) = %d\n",
		wimax_dev, report_skb, result);
	return result;
}