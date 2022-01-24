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
struct netlink_table {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct sock* FUNC0 (struct netlink_table*,int /*<<< orphan*/ ,struct net*) ; 
 struct netlink_table* nl_table ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC4(struct net *net, int protocol, u32 portid)
{
	struct netlink_table *table = &nl_table[protocol];
	struct sock *sk;

	FUNC1();
	sk = FUNC0(table, portid, net);
	if (sk)
		FUNC3(sk);
	FUNC2();

	return sk;
}