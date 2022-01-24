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
struct nlmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl802154_family ; 
 int /*<<< orphan*/  FUNC3 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*) ; 

int FUNC5(struct sk_buff *msg, unsigned int group)
{
	struct nlmsghdr *nlh = FUNC4(msg);
	void *hdr = FUNC0(FUNC3(nlh));

	FUNC1(msg, hdr);

	return FUNC2(&nl802154_family, msg, 0, group, GFP_ATOMIC);
}