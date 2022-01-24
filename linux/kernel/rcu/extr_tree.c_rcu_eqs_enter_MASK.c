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
struct rcu_data {scalar_t__ dynticks_nmi_nesting; int dynticks_nesting; int /*<<< orphan*/  dynticks; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RCU_EQS_DEBUG ; 
 scalar_t__ DYNTICK_IRQ_NONIDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (struct rcu_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  rcu_data ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct rcu_data* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(bool user)
{
	struct rcu_data *rdp = FUNC11(&rcu_data);

	FUNC2(rdp->dynticks_nmi_nesting != DYNTICK_IRQ_NONIDLE);
	FUNC3(rdp->dynticks_nmi_nesting, 0);
	FUNC2(FUNC0(CONFIG_RCU_EQS_DEBUG) &&
		     rdp->dynticks_nesting == 0);
	if (rdp->dynticks_nesting != 1) {
		rdp->dynticks_nesting--;
		return;
	}

	FUNC6();
	FUNC12(FUNC1("Start"), rdp->dynticks_nesting, 0, rdp->dynticks);
	FUNC2(FUNC0(CONFIG_RCU_EQS_DEBUG) && !user && !FUNC5(current));
	rdp = FUNC11(&rcu_data);
	FUNC4(rdp);
	FUNC10();
	FUNC9(current);
	FUNC3(rdp->dynticks_nesting, 0); /* Avoid irq-access tearing. */
	FUNC7();
	FUNC8();
}