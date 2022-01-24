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
struct ip_vs_pe {int dummy; } ;

/* Variables and functions */
 struct ip_vs_pe* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

struct ip_vs_pe *FUNC2(const char *name)
{
	struct ip_vs_pe *pe;

	/* Search for the pe by name */
	pe = FUNC0(name);

	/* If pe not found, load the module and search again */
	if (!pe) {
		FUNC1("ip_vs_pe_%s", name);
		pe = FUNC0(name);
	}

	return pe;
}