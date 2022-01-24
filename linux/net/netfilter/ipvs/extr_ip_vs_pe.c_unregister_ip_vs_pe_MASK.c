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
struct ip_vs_pe {int /*<<< orphan*/  name; int /*<<< orphan*/  n_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ip_vs_pe_mutex ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int FUNC5(struct ip_vs_pe *pe)
{
	FUNC2(&ip_vs_pe_mutex);
	/* Remove it from the d-linked pe list */
	FUNC1(&pe->n_list);
	FUNC3(&ip_vs_pe_mutex);

	/* decrease the module use count */
	FUNC0();

	FUNC4("[%s] pe unregistered.\n", pe->name);

	return 0;
}