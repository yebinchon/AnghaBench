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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct genl_info {int /*<<< orphan*/  attrs; int /*<<< orphan*/  userhdr; } ;
struct datapath {scalar_t__ user_features; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct datapath*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 struct datapath* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb, struct genl_info *info)
{
	struct datapath *dp;

	dp = FUNC2(FUNC3(skb->sk), info->userhdr, info->attrs);
	if (FUNC0(dp))
		return;

	FUNC1(dp->user_features, "Dropping previously announced user features\n");
	dp->user_features = 0;
}