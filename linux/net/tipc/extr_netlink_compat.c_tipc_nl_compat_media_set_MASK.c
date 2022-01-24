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
struct tipc_nl_compat_msg {int /*<<< orphan*/  req; } ;
struct tipc_link_config {int /*<<< orphan*/  name; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  TIPC_NLA_MEDIA ; 
 int /*<<< orphan*/  TIPC_NLA_MEDIA_NAME ; 
 int /*<<< orphan*/  TIPC_NLA_MEDIA_PROP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct tipc_nl_compat_msg*,struct tipc_link_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
				    struct tipc_nl_compat_msg *msg)
{
	struct nlattr *prop;
	struct nlattr *media;
	struct tipc_link_config *lc;

	lc = (struct tipc_link_config *)FUNC0(msg->req);

	media = FUNC3(skb, TIPC_NLA_MEDIA);
	if (!media)
		return -EMSGSIZE;

	if (FUNC4(skb, TIPC_NLA_MEDIA_NAME, lc->name))
		return -EMSGSIZE;

	prop = FUNC3(skb, TIPC_NLA_MEDIA_PROP);
	if (!prop)
		return -EMSGSIZE;

	FUNC1(skb, msg, lc);
	FUNC2(skb, prop);
	FUNC2(skb, media);

	return 0;
}