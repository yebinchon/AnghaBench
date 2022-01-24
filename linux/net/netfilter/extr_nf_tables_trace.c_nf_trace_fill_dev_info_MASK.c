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
struct net_device {int /*<<< orphan*/  type; int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_TRACE_IIF ; 
 int /*<<< orphan*/  NFTA_TRACE_IIFTYPE ; 
 int /*<<< orphan*/  NFTA_TRACE_OIF ; 
 int /*<<< orphan*/  NFTA_TRACE_OIFTYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *nlskb,
				  const struct net_device *indev,
				  const struct net_device *outdev)
{
	if (indev) {
		if (FUNC3(nlskb, NFTA_TRACE_IIF,
				 FUNC0(indev->ifindex)))
			return -1;

		if (FUNC2(nlskb, NFTA_TRACE_IIFTYPE,
				 FUNC1(indev->type)))
			return -1;
	}

	if (outdev) {
		if (FUNC3(nlskb, NFTA_TRACE_OIF,
				 FUNC0(outdev->ifindex)))
			return -1;

		if (FUNC2(nlskb, NFTA_TRACE_OIFTYPE,
				 FUNC1(outdev->type)))
			return -1;
	}

	return 0;
}