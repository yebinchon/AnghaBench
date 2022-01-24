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
struct net {int dummy; } ;
struct ifacaddr6 {int /*<<< orphan*/  aca_addr_lst; int /*<<< orphan*/  aca_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  acaddr_hash_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * inet6_acaddr_lst ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net *net, struct ifacaddr6 *aca)
{
	unsigned int hash = FUNC1(net, &aca->aca_addr);

	FUNC2(&acaddr_hash_lock);
	FUNC0(&aca->aca_addr_lst, &inet6_acaddr_lst[hash]);
	FUNC3(&acaddr_hash_lock);
}