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
struct xfrm_user_offload {int /*<<< orphan*/  flags; int /*<<< orphan*/  ifindex; } ;
struct xfrm_state_offload {int /*<<< orphan*/  flags; TYPE_1__* dev; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  XFRMA_OFFLOAD_DEV ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_user_offload*,int /*<<< orphan*/ ,int) ; 
 struct xfrm_user_offload* FUNC1 (struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct xfrm_state_offload *xso, struct sk_buff *skb)
{
	struct xfrm_user_offload *xuo;
	struct nlattr *attr;

	attr = FUNC2(skb, XFRMA_OFFLOAD_DEV, sizeof(*xuo));
	if (attr == NULL)
		return -EMSGSIZE;

	xuo = FUNC1(attr);
	FUNC0(xuo, 0, sizeof(*xuo));
	xuo->ifindex = xso->dev->ifindex;
	xuo->flags = xso->flags;

	return 0;
}