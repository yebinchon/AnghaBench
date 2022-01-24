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
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_LINKINFO ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct net_device const*) ; 
 int FUNC4 (struct sk_buff*,struct net_device const*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, const struct net_device *dev)
{
	struct nlattr *linkinfo;
	int err = -EMSGSIZE;

	linkinfo = FUNC2(skb, IFLA_LINKINFO);
	if (linkinfo == NULL)
		goto out;

	err = FUNC3(skb, dev);
	if (err < 0)
		goto err_cancel_link;

	err = FUNC4(skb, dev);
	if (err < 0)
		goto err_cancel_link;

	FUNC1(skb, linkinfo);
	return 0;

err_cancel_link:
	FUNC0(skb, linkinfo);
out:
	return err;
}