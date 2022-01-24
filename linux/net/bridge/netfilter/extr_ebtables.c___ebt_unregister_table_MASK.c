#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net {int dummy; } ;
struct ebt_table {TYPE_1__* private; int /*<<< orphan*/  me; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {struct TYPE_4__* entries; scalar_t__ nentries; int /*<<< orphan*/  entries_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ebt_cleanup_entry ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ebt_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct ebt_table*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(struct net *net, struct ebt_table *table)
{
	FUNC5(&ebt_mutex);
	FUNC3(&table->list);
	FUNC6(&ebt_mutex);
	FUNC0(table->private->entries, table->private->entries_size,
			  ebt_cleanup_entry, net, NULL);
	if (table->private->nentries)
		FUNC4(table->me);
	FUNC7(table->private->entries);
	FUNC1(table->private);
	FUNC7(table->private);
	FUNC2(table);
}