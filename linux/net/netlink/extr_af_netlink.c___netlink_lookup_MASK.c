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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct netlink_table {int /*<<< orphan*/  hash; } ;
struct netlink_compare_arg {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netlink_compare_arg*,struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netlink_rhashtable_params ; 
 struct sock* FUNC1 (int /*<<< orphan*/ *,struct netlink_compare_arg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sock *FUNC2(struct netlink_table *table, u32 portid,
				     struct net *net)
{
	struct netlink_compare_arg arg;

	FUNC0(&arg, net, portid);
	return FUNC1(&table->hash, &arg,
				      netlink_rhashtable_params);
}