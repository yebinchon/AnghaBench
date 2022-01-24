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
struct sock {int dummy; } ;
struct rds_tcp_net {int /*<<< orphan*/  rds_tcp_accept_w; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct rds_tcp_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_tcp_netid ; 
 int /*<<< orphan*/  rds_wq ; 
 struct net* FUNC2 (struct sock*) ; 

void FUNC3(struct sock *sk)
{
	struct net *net = FUNC2(sk);
	struct rds_tcp_net *rtn = FUNC0(net, rds_tcp_netid);

	FUNC1(rds_wq, &rtn->rds_tcp_accept_w);
}