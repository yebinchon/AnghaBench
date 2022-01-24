#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcp_metrics_block {int /*<<< orphan*/  tcpm_daddr; int /*<<< orphan*/  tcpm_saddr; int /*<<< orphan*/  tcpm_next; } ;
struct net {int dummy; } ;
struct inetpeer_addr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct inetpeer_addr const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct net*) ; 
 struct tcp_metrics_block* FUNC2 (int /*<<< orphan*/ ) ; 
 struct tcp_metrics_block* FUNC3 (struct tcp_metrics_block*,int) ; 
 TYPE_1__* tcp_metrics_hash ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_metrics_block*) ; 

__attribute__((used)) static struct tcp_metrics_block *FUNC5(const struct inetpeer_addr *saddr,
						   const struct inetpeer_addr *daddr,
						   struct net *net, unsigned int hash)
{
	struct tcp_metrics_block *tm;
	int depth = 0;

	for (tm = FUNC2(tcp_metrics_hash[hash].chain); tm;
	     tm = FUNC2(tm->tcpm_next)) {
		if (FUNC0(&tm->tcpm_saddr, saddr) &&
		    FUNC0(&tm->tcpm_daddr, daddr) &&
		    FUNC1(FUNC4(tm), net))
			break;
		depth++;
	}
	return FUNC3(tm, depth);
}