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
struct srcu_struct {int /*<<< orphan*/  sda; } ;
struct srcu_node {int grplo; int grphi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct srcu_struct *ssp, struct srcu_node *snp,
				  unsigned long mask, unsigned long delay)
{
	int cpu;

	for (cpu = snp->grplo; cpu <= snp->grphi; cpu++) {
		if (!(mask & (1 << (cpu - snp->grplo))))
			continue;
		FUNC1(FUNC0(ssp->sda, cpu), delay);
	}
}