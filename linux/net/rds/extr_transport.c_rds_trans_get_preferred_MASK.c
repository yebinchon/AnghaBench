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
typedef  scalar_t__ u_int8_t ;
struct rds_transport {scalar_t__ (* laddr_check ) (struct net*,struct in6_addr const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  t_owner; } ;
struct net {int dummy; } ;
struct in6_addr {int /*<<< orphan*/ * s6_addr32; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ IN_LOOPBACKNET ; 
 unsigned int RDS_TRANS_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct in6_addr const*) ; 
 scalar_t__ FUNC2 (struct in6_addr const*) ; 
 struct rds_transport rds_loop_transport ; 
 int /*<<< orphan*/  rds_trans_sem ; 
 scalar_t__ FUNC3 (struct net*,struct in6_addr const*,int /*<<< orphan*/ ) ; 
 struct rds_transport** transports ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct rds_transport *FUNC6(struct net *net,
					      const struct in6_addr *addr,
					      __u32 scope_id)
{
	struct rds_transport *ret = NULL;
	struct rds_transport *trans;
	unsigned int i;

	if (FUNC2(addr)) {
		if (*(u_int8_t *)&addr->s6_addr32[3] == IN_LOOPBACKNET)
			return &rds_loop_transport;
	} else if (FUNC1(addr)) {
		return &rds_loop_transport;
	}

	FUNC0(&rds_trans_sem);
	for (i = 0; i < RDS_TRANS_COUNT; i++) {
		trans = transports[i];

		if (trans && (trans->laddr_check(net, addr, scope_id) == 0) &&
		    (!trans->t_owner || FUNC4(trans->t_owner))) {
			ret = trans;
			break;
		}
	}
	FUNC5(&rds_trans_sem);

	return ret;
}