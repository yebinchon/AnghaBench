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
struct genlmsghdr {int dummy; } ;
struct genl_info {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct genlmsghdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 struct genlmsghdr* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct genl_info *info)
{
	struct genlmsghdr *genlhdr = FUNC3(FUNC4(skb));
	void *reply = FUNC0(genlhdr);

	FUNC1(skb, reply);

	return FUNC2(skb, info);
}