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
struct in6_addr {int dummy; } ;
struct ifacaddr6 {int aca_users; int /*<<< orphan*/  aca_refcnt; int /*<<< orphan*/  aca_tstamp; int /*<<< orphan*/  aca_cstamp; int /*<<< orphan*/  aca_addr_lst; struct fib6_info* aca_rt; struct in6_addr aca_addr; } ;
struct fib6_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fib6_info*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct ifacaddr6* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct ifacaddr6 *FUNC4(struct fib6_info *f6i,
				   const struct in6_addr *addr)
{
	struct ifacaddr6 *aca;

	aca = FUNC2(sizeof(*aca), GFP_ATOMIC);
	if (!aca)
		return NULL;

	aca->aca_addr = *addr;
	FUNC1(f6i);
	aca->aca_rt = f6i;
	FUNC0(&aca->aca_addr_lst);
	aca->aca_users = 1;
	/* aca_tstamp should be updated upon changes */
	aca->aca_cstamp = aca->aca_tstamp = jiffies;
	FUNC3(&aca->aca_refcnt, 1);

	return aca;
}