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
struct rcu_data {long dynticks_nesting; int dynticks_nmi_nesting; int /*<<< orphan*/  dynticks; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RCU_EQS_DEBUG ; 
 int DYNTICK_IRQ_NONIDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (long,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  rcu_data ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct rcu_data* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,long,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(bool user)
{
	struct rcu_data *rdp;
	long oldval;

	FUNC5();
	rdp = FUNC9(&rcu_data);
	oldval = rdp->dynticks_nesting;
	FUNC2(FUNC0(CONFIG_RCU_EQS_DEBUG) && oldval < 0);
	if (oldval) {
		rdp->dynticks_nesting++;
		return;
	}
	FUNC8();
	FUNC7();
	FUNC6();
	FUNC10(FUNC1("End"), rdp->dynticks_nesting, 1, rdp->dynticks);
	FUNC2(FUNC0(CONFIG_RCU_EQS_DEBUG) && !user && !FUNC4(current));
	FUNC3(rdp->dynticks_nesting, 1);
	FUNC2(rdp->dynticks_nmi_nesting);
	FUNC3(rdp->dynticks_nmi_nesting, DYNTICK_IRQ_NONIDLE);
}