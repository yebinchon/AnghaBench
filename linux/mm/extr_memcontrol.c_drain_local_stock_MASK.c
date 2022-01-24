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
struct work_struct {int dummy; } ;
struct memcg_stock_pcp {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLUSHING_CACHED_CHARGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct memcg_stock_pcp*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  memcg_stock ; 
 struct memcg_stock_pcp* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct work_struct *dummy)
{
	struct memcg_stock_pcp *stock;
	unsigned long flags;

	/*
	 * The only protection from memory hotplug vs. drain_stock races is
	 * that we always operate on local CPU stock here with IRQ disabled
	 */
	FUNC3(flags);

	stock = FUNC4(&memcg_stock);
	FUNC1(stock);
	FUNC0(FLUSHING_CACHED_CHARGE, &stock->flags);

	FUNC2(flags);
}