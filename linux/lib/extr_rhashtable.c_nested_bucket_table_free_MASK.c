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
typedef  union nested_table {int dummy; } nested_table ;
struct bucket_table {unsigned int size; unsigned int nest; int /*<<< orphan*/ * buckets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union nested_table*) ; 
 int /*<<< orphan*/  FUNC1 (union nested_table*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct bucket_table *tbl)
{
	unsigned int size = tbl->size >> tbl->nest;
	unsigned int len = 1 << tbl->nest;
	union nested_table *ntbl;
	unsigned int i;

	ntbl = (union nested_table *)FUNC2(tbl->buckets[0]);

	for (i = 0; i < len; i++)
		FUNC1(ntbl + i, size);

	FUNC0(ntbl);
}