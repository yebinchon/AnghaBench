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
struct srcu_struct {unsigned long srcu_gp_seq_needed_exp; int /*<<< orphan*/  srcu_gp_seq; struct srcu_struct* srcu_parent; } ;
struct srcu_node {unsigned long srcu_gp_seq_needed_exp; int /*<<< orphan*/  srcu_gp_seq; struct srcu_node* srcu_parent; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct srcu_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct srcu_struct*,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct srcu_struct *ssp, struct srcu_node *snp,
				  unsigned long s)
{
	unsigned long flags;

	for (; snp != NULL; snp = snp->srcu_parent) {
		if (FUNC4(&ssp->srcu_gp_seq, s) ||
		    FUNC1(FUNC0(snp->srcu_gp_seq_needed_exp), s))
			return;
		FUNC5(snp, flags);
		if (FUNC1(snp->srcu_gp_seq_needed_exp, s)) {
			FUNC6(snp, flags);
			return;
		}
		FUNC3(snp->srcu_gp_seq_needed_exp, s);
		FUNC6(snp, flags);
	}
	FUNC5(ssp, flags);
	if (FUNC2(ssp->srcu_gp_seq_needed_exp, s))
		ssp->srcu_gp_seq_needed_exp = s;
	FUNC6(ssp, flags);
}