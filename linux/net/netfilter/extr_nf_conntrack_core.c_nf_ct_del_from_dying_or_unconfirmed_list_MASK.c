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
struct ct_pcpu {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  pcpu_lists; } ;
struct TYPE_6__ {TYPE_1__ ct; } ;
struct TYPE_5__ {int /*<<< orphan*/  hnnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (struct nf_conn*) ; 
 struct ct_pcpu* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct nf_conn *ct)
{
	struct ct_pcpu *pcpu;

	/* We overload first tuple to link into unconfirmed or dying list.*/
	pcpu = FUNC4(FUNC3(ct)->ct.pcpu_lists, ct->cpu);

	FUNC5(&pcpu->lock);
	FUNC0(FUNC2(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode));
	FUNC1(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode);
	FUNC6(&pcpu->lock);
}