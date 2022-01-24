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
struct table_instance {int dummy; } ;
struct flow_table {int /*<<< orphan*/  ufid_ti; int /*<<< orphan*/  ti; } ;

/* Variables and functions */
 struct table_instance* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct table_instance*,struct table_instance*,int) ; 

void FUNC2(struct flow_table *table)
{
	struct table_instance *ti = FUNC0(table->ti);
	struct table_instance *ufid_ti = FUNC0(table->ufid_ti);

	FUNC1(ti, ufid_ti, false);
}