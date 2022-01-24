#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nf_conn {TYPE_2__* tuplehash; int /*<<< orphan*/  cpu; } ;
struct ct_pcpu {int /*<<< orphan*/  lock; int /*<<< orphan*/  unconfirmed; } ;
struct TYPE_4__ {int /*<<< orphan*/  pcpu_lists; } ;
struct TYPE_6__ {TYPE_1__ ct; } ;
struct TYPE_5__ {int /*<<< orphan*/  hnnode; } ;

/* Variables and functions */
 size_t IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (struct nf_conn*) ; 
 struct ct_pcpu* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nf_conn *ct)
{
	struct ct_pcpu *pcpu;

	/* add this conntrack to the (per cpu) unconfirmed list */
	ct->cpu = FUNC3();
	pcpu = FUNC2(FUNC1(ct)->ct.pcpu_lists, ct->cpu);

	FUNC4(&pcpu->lock);
	FUNC0(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode,
			     &pcpu->unconfirmed);
	FUNC5(&pcpu->lock);
}