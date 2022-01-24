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
struct vport {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vport*,struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC4(struct vport *vport, struct net *net,
					 u32 portid, u32 seq, u8 cmd)
{
	struct sk_buff *skb;
	int retval;

	skb = FUNC2(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!skb)
		return FUNC1(-ENOMEM);

	retval = FUNC3(vport, skb, net, portid, seq, 0, cmd,
					 GFP_KERNEL);
	FUNC0(retval < 0);

	return skb;
}