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
struct tracing_map_sort_entry {int /*<<< orphan*/  elt; scalar_t__ elt_copied; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tracing_map_sort_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tracing_map_sort_entry *entry)
{
	if (!entry)
		return;

	if (entry->elt_copied)
		FUNC1(entry->elt);

	FUNC0(entry);
}