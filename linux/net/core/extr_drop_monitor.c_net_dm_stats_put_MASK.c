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
struct net_dm_stats {int /*<<< orphan*/  dropped; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NET_DM_ATTR_PAD ; 
 int /*<<< orphan*/  NET_DM_ATTR_STATS ; 
 int /*<<< orphan*/  NET_DM_ATTR_STATS_DROPPED ; 
 int /*<<< orphan*/  FUNC0 (struct net_dm_stats*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *msg)
{
	struct net_dm_stats stats;
	struct nlattr *attr;

	FUNC0(&stats);

	attr = FUNC3(msg, NET_DM_ATTR_STATS);
	if (!attr)
		return -EMSGSIZE;

	if (FUNC4(msg, NET_DM_ATTR_STATS_DROPPED,
			      stats.dropped, NET_DM_ATTR_PAD))
		goto nla_put_failure;

	FUNC2(msg, attr);

	return 0;

nla_put_failure:
	FUNC1(msg, attr);
	return -EMSGSIZE;
}