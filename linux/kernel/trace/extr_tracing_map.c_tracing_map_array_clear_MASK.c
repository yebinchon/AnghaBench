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
struct tracing_map_array {unsigned int n_pages; int /*<<< orphan*/ * pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct tracing_map_array *a)
{
	unsigned int i;

	if (!a->pages)
		return;

	for (i = 0; i < a->n_pages; i++)
		FUNC0(a->pages[i], 0, PAGE_SIZE);
}