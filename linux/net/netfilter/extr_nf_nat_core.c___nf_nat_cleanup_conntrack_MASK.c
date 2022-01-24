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
struct nf_conn {int /*<<< orphan*/  nat_bysource; TYPE_1__* tuplehash; } ;
struct TYPE_2__ {int /*<<< orphan*/  tuple; } ;

/* Variables and functions */
 unsigned int CONNTRACK_LOCKS ; 
 size_t IP_CT_DIR_ORIGINAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 
 int /*<<< orphan*/ * nf_nat_locks ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct nf_conn *ct)
{
	unsigned int h;

	h = FUNC0(FUNC2(ct), &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple);
	FUNC3(&nf_nat_locks[h % CONNTRACK_LOCKS]);
	FUNC1(&ct->nat_bysource);
	FUNC4(&nf_nat_locks[h % CONNTRACK_LOCKS]);
}